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

# possibly need to download samtools




