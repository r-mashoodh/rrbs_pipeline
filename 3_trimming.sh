#!/bin/bash

## RAW READ STUFF

mkdir trimmed_reads
cd RRBS_sample

# 1_Trim galore

# rrbs specific trimming
for i in *.fq.gz;
do
filename=`echo $i | awk -F '.fq.gz' '{print $1}'`
../software/TrimGalore-0.5.0/trim_galore -rrbs -o ../trimmed_reads $filename".fq.gz"
done


# 2_fastqc

mkdir fastqc_files
cd trimmed_reads

for i in *_trimmed.fq.gz;
do
filename =`echo $i | awk -F '_trimmed.fq.gz' '{print $1}'`
fastqc $filename"_trimmed.fq.gz" -o ../fastqc_files
done
