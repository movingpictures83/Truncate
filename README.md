# Truncate
# Language: Perl
# Input: TXT
# Output: FASTA
# Tested with: PluMA 1.1, Perl 5.26
# Dependencies: AmpliconNoise 1.29

PluMA plugin to trim sequences to a user-specified length (Quince et al, 2011).

The plugin accepts as input a TXT file of tab-delimited keyword-value pairs:
inputseq: FASTA file to trim
trimlength: Desired length 

Trimmed sequences are output in FASTA format
