# Software setup for Fish methylation analysis

mkdir software
cd software

# Download TrimGalore
wget https://github.com/FelixKrueger/TrimGalore/archive/0.5.0.zip
unzip 0.5.0.zip

# Download Bismarck
# note requires samtools and bowtie2
wget https://github.com/FelixKrueger/Bismark/archive/0.20.0.zip
unzip 0.20.0.zip

# Download bowtie2
git clone https://github.com/BenLangmead/bowtie2.git

cd ..

# Get some genomes

mkdir genomes
cd genomes

# This is where you will place all the reference genomes you need

# fish ... 
# M. zebra
# https://www.ncbi.nlm.nih.gov/genome?LinkName=bioproject_genome&from_uid=60369

wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/238/955/GCF_000238955.4_M_zebra_UMD2a/GCF_000238955.4_M_zebra_UMD2a_genomic.fna.gz

# spike-in
# lamda for arne's libs
# RRBS from diagenode website





