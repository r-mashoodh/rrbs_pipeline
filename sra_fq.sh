#!/bin/bash

#sra toolkit

# bioproject for shearwater
# SRA Study:SRP171071

mkdir sra_dump
mv filelist.txt sra_dump

cd sra_dump

for i in `cat filelist.txt`;
do
  ../software/sratoolkit.2.9.2-ubuntu64/bin/fastq-dump --accession $i --outdir .
done

#../software/sratoolkit.2.9.2-ubuntu64/bin/vdb-dump -f tab -C READ $i | awk '{print ">" "$i." NR "\n" $0}' > $i.fasta

