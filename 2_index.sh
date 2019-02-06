# build index

# download relevant genomes for species and spike-ins
# Get some genomes

mkdir genomes
cd genomes

# fish ... 
# M. zebra
# https://www.ncbi.nlm.nih.gov/genome?LinkName=bioproject_genome&from_uid=60369

wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/238/955/GCF_000238955.4_M_zebra_UMD2a/GCF_000238955.4_M_zebra_UMD2a_genomic.fna.gz

# spike-in
# lamda for arne's libs
# RRBS from diagenode website




# Create indices for both spike-in and fish
# note made use of global installs of bowtie2 / samtools which are dependencies for bismark

# genome preparation for m_zebra
software/Bismark-0.20.0/bismark_genome_preparation genomes/m_zebra/

# genome preparation for 
software/Bismark-0.20.0/bismark_genome_preparation genomes/spike/

