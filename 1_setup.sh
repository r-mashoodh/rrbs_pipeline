# Software setup for Fish methylation analysis

mkdir software
cd software

# Download TrimGalore
wget https://github.com/FelixKrueger/TrimGalore/archive/0.5.0.zip
unzip 0.5.0.zip

# Download Bismark
# note requires samtools and bowtie2
wget https://github.com/FelixKrueger/Bismark/archive/0.20.0.zip
unzip 0.20.0.zip

# Download bowtie2
git clone https://github.com/BenLangmead/bowtie2.git

# Download/install  samtools
wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2 
tar jxvf samtools-1.9.tar.bz2

cd samtools-1.9
./configure --prefix=`pwd`
make
make install

cd .. #places you back into software folder
