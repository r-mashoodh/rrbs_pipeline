#!/bin/bash
## RAW READ STUFF


# Bismark

# bismark instructions:
# https://github.com/FelixKrueger/Bismark

# Map/alignment to spike in

mkdir spike_aligned

for i in *_trimmed.fq.gz;
do
filename =`echo $i | awk -F '_trimmed.fq.gz' '{print $1}'`
../software/Bismark-0.20.0/bismark --path_to_bowtie ../software/bowtie2/ -n 1 ../genomes/spike/ -o ../spike_aligned $filename".fq.gz"
done


#Align to the genome of interest

mkdir bis_aligned

for i in *_trimmed.fq.gz;
do
filename =`echo $i | awk -F '_trimmed.fq.gz' '{print $1}'`
## make sure to add baboon genome dir ## ../software/Bismark-0.20.0/bismark --path_to_bowtie ../software/bowtie2/ -n 1 ../genomes/baboon/ -o ../spike_aligned $filename".fq.gz"
done


for i in ##<<>>>##;
do
filename =`echo $i | awk -F '_trimmed.fq.gz' '{print $1}'`
../software/Bismark-0.20.0/methylation_extractor -s file.fq_bismark.sam
done

## dummy code

from fish_me dir
../software/Bismark-0.20.0/bismark -n 1 ../genomes/m_zebra/ -o ../bis_aligned G10H02_trimmed.fq.gz
from bis_aligned dir
../software/Bismark-0.20.0/bismark_methylation_extractor -s G10H02_trimmed_bismark_bt2.bam

# Map/align fish genome


# A typical command including the optional bedGraph --counts output could look like this:
bismark_methylation_extractor -s --bedGraph --counts --buffer_size 10G
s_1_sequence.txt_bismark.sam

#A typical command including the optional genome-wide cytosine methylation report could look like
#this:
bismark_methylation_extractor -s --bedGraph --counts --buffer_size 10G --
cytosine_report --genome_folder <path_to_genome_folder> s_1_sequence.txt_bismark.sam
