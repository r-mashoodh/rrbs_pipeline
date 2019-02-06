# Teaching: RRBS Data Analysis

## Purpose
These scripts will take you through analysing RRBS data.

Before you start you should familiarise yourself with command line and R scripting. This is a great resource for getting started with bioinformatics. 
```
https://github.com/WilsonSayresLab/BioinformaticsIntroduction/blob/master/README.md
```

## Getting Started
First create a directory for your analyses
```
mkdir rrbs_analysis
git clone ?
```

## Data
This pipeline uses data from [something, BioProject reference]. 

This script will download and install [SRA Toolkit](https://www.ncbi.nlm.nih.gov/sra/docs/toolkitsoft/) and then download the raw fastq files for the samples specified in 'filelist.txt':
```
./sra_fq.sh
```
SRA Run IDs used for this analysis are contained within:
```
filelist.txt
```


## 1. Tool Setup
To run the pipeline you will need to install [TrimGalore!](https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/), [Bismark](https://github.com/FelixKrueger/Bismark) and [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/). This script will download the tools you need:

```
./1_setup.sh
```
Note: Bismark requires [Bowtie2 ](http://bowtie-bio.sourceforge.net/bowtie2/index.shtml) for mapping. 

## 2. Build Index
This script will download the required genomes and build indices in [Bismark](https://github.com/FelixKrueger/Bismark).
```
./2_index.sh
```

## 3. Processing 
This script will Trim raw reads using [TrimGalore!](https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/) and runs [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) on them.
```
./3_trimming.sh
```

## 4. Mapping & Quantification of methylation
This script will map trimmed reads to the reference genome using [Bismark](https://github.com/FelixKrueger/Bismark) and generate methylation count tables. 
```
./4_mapping.sh
```
## 5. Analysis using R
This script will analyse data ...
```
5_analysis.R
```
Note: you will have to import txt files generated from mapping ... probably merging etc etc. TBD. 
