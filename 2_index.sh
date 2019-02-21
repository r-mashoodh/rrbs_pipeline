#!/bin/bash

# build index

# download relevant genomes for species and spike-ins
# Get some genomes

mkdir genomes
cd genomes

# fish ... 
# M. zebra
# https://www.ncbi.nlm.nih.gov/genome?LinkName=bioproject_genome&from_uid=60369

#mkdir m_zebra
#cd m_zebra

#wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/238/955/GCF_000238955.4_M_zebra_UMD2a/GCF_000238955.4_M_zebra_UMD2a_genomic.fna.gz

mkdir papio
cd papio

wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/264/685/GCF_000264685.3_Panu_3.0/GCF_000264685.3_Panu_3.0_genomic.fna.gz

cd .. 

# spike-in
# lamda for arne's libs
# RRBS from diagenode website

mkdir spike
cd spike 

# code to download spike in goes here

cd ..

# Create indices for both spike-in and fish

# you will need to replace 'genomes/m_zebra/' with the path to your genomes of interest

# genome preparation for m_zebra
software/Bismark-0.20.0/bismark_genome_preparation --path_to_bowtie ../software/bowtie2 genomes/m_zebra/

# genome preparation for spike in
software/Bismark-0.20.0/bismark_genome_preparation --path_to_bowtie ../software/bowtie2 genomes/spike/

