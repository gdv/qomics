# Project work - Beyond Genome Assembly

Consider the following files:
1. the [reference
   genome](https://github.com/gdv/qomics/raw/main/pipeline/covid19-refseq.fasta) of SARS-CoV-2
2. a [FASTQ sample](https://github.com/gdv/qomics/raw/main/pipeline/SRR11608258.fastq.fastp.zst), compressed with [zstd](https://facebook.github.io/zstd/). Beware that you have to decompress this file with `unzstd`.
3. a [bash script](https://github.com/gdv/qomics/raw/main/pipeline/pipeline.sh) that aligns the read in the sample and computes the variant against the reference genome.

You have:
1. to translate the bash script into a Snakemake file
2. to write a very short report (max half page) on the results shown by the [USCS genome browser](https://genome.ucsc.edu/index.html) on those variants

Extra points if your snakemake can be easily reused on more than one sample.

You need to install the following tools:
  - samtools
  - minimap2
  - freebayes
  - zstd

If you use conda, the commands are:
```
conda install -c conda-forge zstd
conda install -c bioconda minimap2
conda install -c bioconda freebayes
conda install -c bioconda samtools
```
