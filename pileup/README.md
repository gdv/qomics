To visualize the alignment:

```
samtools tview NA12878.chr22.tiny.hla.bam
```

To compute the pileup:

```
samtools mpileup -f hla.fa -s NA12878.chr22.tiny.hla.bam 
```



To call the variants:

```
bcftools mpileup -f hla.fa NA12878.chr22.tiny.hla.bam > hla.samtools 
bcftools call -m hla.samtools > hla.vcf
```
