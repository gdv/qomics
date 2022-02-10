#!/bin/bash
set -e 

zstd -d SRR11608258.fastq.fastp.zstd


# Index the reference genome
samtools faidx --fai-idx covid19-refseq.fasta.fai covid19-refseq.fasta

### Align fastq files to reference (covid19-refseq.fasta, provided in this repository)
minimap2 -ax sr -t 4 covid19-refseq.fasta SRR11608258.fastq.fastp > SRR11608258.sam

# Sort the sam file and obtain the BAM file
# since it's much faster to access
samtools sort -o SRR11608258.sorted.bam SRR11608258.sam

# Compute the variants
freebayes -f covid19-refseq.fasta  SRR11608258.sorted.bam > SRR11608258.vcf
