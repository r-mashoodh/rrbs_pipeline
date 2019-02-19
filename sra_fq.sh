#!/bin/bash

#sra toolkit
# download sra_toolkit

mkdir software
cd software
wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.9.0/sratoolkit.2.9.0-ubuntu64.tar.gz
tar -xvzf sratoolkit.2.9.0-ubuntu64.tar.gz

cd ..

mkdir sra_dump
mv filelist.txt sra_dump

cd sra_dump

for i in `cat filelist.txt`;
do
  ../software/sratoolkit.2.9.2-ubuntu64/bin/fastq-dump --accession $i --outdir .
done

#../software/sratoolkit.2.9.2-ubuntu64/bin/vdb-dump -f tab -C READ $i | awk '{print ">" "$i." NR "\n" $0}' > $i.fasta

