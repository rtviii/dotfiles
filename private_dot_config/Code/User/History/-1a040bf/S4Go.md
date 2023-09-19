## Classification of polypeptides using HMMs

### Gist

For each established polypeptide nomenclature class (i.e. uL2/23SrRNA/eF-Tu/eIF-5/etc) an HMM exists. When a new sequence is received (at ETL time), it is compared against every HMM. The HMM with the highest score is selected as the classification for the sequence.