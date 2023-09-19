
from io import StringIO
import random
import subprocess
from Bio.Seq import Seq
from Bio import SeqIO
from ete3 import NCBITaxa
from Bio import SeqRecord
import os
import pickle
# from ribctl import RP_MSAS_PATH, RP_MSAS_PRUNED_PATH
from ribctl.lib.types.types_ribosome import RNA, PolymericFactor, Protein, ProteinClass

MSA = str

def fasta_from_chain(chain: RNA | Protein | PolymericFactor) -> str:
    fasta_description = "[{}.{}] {} |{}| {}".format(chain.parent_rcsb_id, chain.auth_asym_id, chain.src_organism_names[0], "",  chain.src_organism_ids[0])
    _seq = chain.entity_poly_seq_one_letter_code_can.replace("\n", "")
    seq_record = SeqRecord.SeqRecord(Seq(_seq).upper())
    seq_record.id = fasta_description
    return seq_record.format('fasta')
#! --------------------------------------------------------------------

def phylogenetic_neighborhood(taxids_base: list[str], taxid_target: str, n_neighbors: int = 10) -> list[str]:
    """Given a set of taxids and a target taxid, return a list of the [n_neighbors] phylogenetically closest to the target."""
    tree = NCBITaxa().get_topology(list(set([*taxids_base, str(taxid_target)])))
    target_node = tree.search_nodes(name=str(taxid_target))[0]
    phylo_all_nodes = [
        (node.name, tree.get_distance(target_node, node))
        for node in tree.traverse()]

    phylo_extant_nodes = filter(
        lambda taxid: taxid[0] in taxids_base, phylo_all_nodes)

    phylo_sorted_nodes = sorted(phylo_extant_nodes, key=lambda x: x[1])

    nbr_taxids = list(
        map(lambda tax_phydist: tax_phydist[0], phylo_sorted_nodes))

    # the first element is the target node
    if len(nbr_taxids) < n_neighbors:
        return nbr_taxids[1:]
    else:
        return nbr_taxids[1:n_neighbors+1]

# * DONE
def msa_yield_taxa_only(msa: MSA) -> list[str]:
    """collect all organism taxids present in a given prody.msa"""

    return [p.getLabel().split('|')[-1] for p in msa]

def msa_dict_get_meta_info(msa: dict[ProteinClass, MSA]) -> dict[ProteinClass, dict]:

    """given a dict of protclass<->msa mapping, yield number of sequeces and organisms contained in each class msa."""
    meta = {
    }

    for k, v in msa.items():
        meta[k] = {
            "nseqs"  : v.numSequences(),
            "species": msa_yield_taxa_only(v)
        }

    return meta


# TODO: RMPRD
def msa_pick_taxa(msa: MSA, taxids: list[str]) -> MSA:
    """Given a MSA and a list of taxids, return a new MSA with only the sequences that match the taxids. 
       Assumes '|' as a delimiter between the taxid and the rest of the label."""
    seqlabel_tups = iter((s, s.getLabel()) for s in msa if s.getLabel().split('|')[-1] in taxids)
    seqs, labels = zip(*seqlabel_tups)
    return MSA(seqs, labels=labels)

# TODO: RMPRD
def msa_phylo_nbhd(msa: MSA, phylo_target_taxid: int, n_neighbors: int = 10) -> MSA:
    """
    - get all tax ids from a given msa
    - get the *n_neighbors* closest to the target taxid from that list using NCBITaxa db
    - return only the tax ids 
    """

    msa_taxa   = msa_yield_taxa_only(msa)
    phylo_nbhd = phylogenetic_neighborhood(msa_taxa, str(phylo_target_taxid), n_neighbors)

    return msa_pick_taxa(msa, phylo_nbhd)


# TODO: RMPRD
def msa_dict(
    phylogenetic_correction_taxid: int                = -1,
    include_only_classes         : list[ProteinClass] = []
) -> dict[ProteinClass, MSA]:
    "Construct an msa dict"

    def msa_dict_cache_tax_pruned_(taxid: int, _: dict):

        dictpath = os.path.join(RP_MSAS_PRUNED_PATH, f"{taxid}.pickle")
        if os.path.exists(dictpath):
            return
        else:
            with open(dictpath, 'wb') as outfile:
                pickle.dump(_, outfile, protocol=pickle.HIGHEST_PROTOCOL)

    def msa_dict_load_tax_pruned(taxid: int) -> dict[ProteinClass, MSA]:

        dictpath = os.path.join(RP_MSAS_PRUNED_PATH, f"{taxid}.pickle")
        if not os.path.exists(dictpath):
            raise FileNotFoundError(f"MSA dict for {taxid} not found")
        else:
            with open(dictpath, 'rb') as handle:
                return pickle.load(handle)

    if phylogenetic_correction_taxid > 0:

        try:
            pruned_dict = msa_dict_load_tax_pruned(phylogenetic_correction_taxid)
            pruned_dict = sorted(pruned_dict.items())

            return { k:v for k,v in pruned_dict } if len(include_only_classes) == 0 else {k: v for k, v in pruned_dict if k in include_only_classes}

        except:
            pruned_dict = {}
            for msafile in os.listdir(RP_MSAS_PATH):
                classname   = msafile.split("_")[0]
                msa         = prody.parseMSA(os.path.join(RP_MSAS_PATH, msafile))
                msa_pruned  = msa_phylo_nbhd(msa, phylogenetic_correction_taxid)
                pruned_dict = {f"{classname}": msa_pruned, **pruned_dict}

            pruned_dict = sorted(pruned_dict.items())
            msa_dict_cache_tax_pruned_(phylogenetic_correction_taxid, pruned_dict)

            return { k:v for k,v in pruned_dict } if len(include_only_classes) == 0 else {k: v for k, v in pruned_dict if k in include_only_classes}
    else:
        msa_dict = {}
        for msafile in os.listdir(RP_MSAS_PATH):
            classname = msafile.split("_")[0]
            msa = prody.parseMSA(os.path.join(RP_MSAS_PATH, msafile))
            msa_dict = {f"{classname}": msa, **msa_dict}

        msa_dict = sorted(msa_dict.items())

        return { k:v for k,v in msa_dict } if len(include_only_classes) == 0 else {k: v for k, v in msa_dict if k in include_only_classes}

