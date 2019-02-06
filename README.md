# Teaching RRBS Data Analysis

## Purpose
These scripts will take you through analysing RRBS data using TrimGalore, Bismark and R.

Before you start you should familiarise yourself with command line and R scripting. This is a great resource for getting started with bioinformatics. 
```
https://github.com/WilsonSayresLab/BioinformaticsIntroduction/blob/master/README.md
```

## 1. Setup
To run the pipeline you will need to install [TrimGalore!](https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/), [Bismark](https://github.com/FelixKrueger/Bismark) and [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/).

```
./1_setup.sh
```

## 2. Build Index
This script will download the required genomes and build indices in [Bismark](https://github.com/FelixKrueger/Bismark).
```
./2_index.sh
```

## 3. Processing 
This script will Trim raw reads using [TrimGalore!](https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/) and runs [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) on them.
```
./3_processing.sh
```

## 4. Mapping & Quantification of methylation
This script will map trimmed reads to the reference genome using [Bismark](https://github.com/FelixKrueger/Bismark) and generate methylation count tables. 
```
./4_mapping.sh
```
