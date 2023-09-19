
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


