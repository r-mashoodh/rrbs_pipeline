#!/bin/bash

## RAW READ STUFF

mkdir trimmed_reads
cd sra_dump

# 1_Trim galore

# rrbs specific trimming
for i in *.fastq;
do
filename=`echo $i | awk -F '.fastq' '{print $1}'`
../software/TrimGalore-0.5.0/trim_galore -rrbs -o ../trimmed_reads $filename".fq.gz"
done


# 2_fastqc

mkdir fastqc_files
cd trimmed_reads

for i in *_trimmed.fastq;
do
filename =`echo $i | awk -F '_trimmed.fastq' '{print $1}'`
fastqc $filename"_trimmed.fq.gz" -o ../fastqc_files
done

