# Project work - Beyond Genome Assembly

Consider the following files:
1. the [reference genome] of SARS-CoV-2
2. a [FASTQ sample], compressed with [zstd](https://facebook.github.io/zstd/). Beware that you have to decompress this file with `unzstd`.
3. a [bash script] that aligns the read in the sample and computes the variant against the reference genome.

You have:
1. to translate the bash script into a Snakemake file
2. to write a very short report (max half page) on the results shown by the [USCS genome browser](https://genome.ucsc.edu/index.html) on those variants

Extra points if your snakemake can be easily reused on more than one sample.
