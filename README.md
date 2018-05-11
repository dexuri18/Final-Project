# Final Project BIO 539
# Coral Cover Comparison by Zone on Anambas Islands Marine Protected Area
## Authors
Deky Rahma Sukarno

## Description
This repository was created as part of Final Project on Big Data Analysis course, which will attempt to analyze coral cover conditions to determine the extent of management effect that has been done since the establishment of zonation for MTP of Anambas Islands, Indonesia, using R Studio.

## Prerequisite
Rstudio program
install.packages("gridExtra")
install.packages("ggpubr")
library(gridExtra)
library(tidyverse)
library("ggpubr")

## Contents of the repository
This repository consists of:
1. coral_analysis.R (* .R). It is a raw script written by the authors (Deky) covering every command used in the analysis.
2. coral_coverage_comparison.Rmd (* .Rmd). It is the Report of Final Project with R analysis performed.
3. coral_coverage_comparison.pdf (* .pdf). It is a knited result of the report in PDF.
4. coral_coverage_comparison.html (* .html). It is a knited result of the report in html.
5. Readme.md. An explanation of this repository.
6. coralreef_anb_2015.csv is the data files being analyzed.
7. scripts.Rproj. It is the project file for RStudio.

## How to
To replicate the process:
1. Install the RStudio
2. Install the packages
3. Load all the library()
4. Download all the file/folder on this repository
5. Run the scripts.Rproj that will open in RStudio
6. Open the * .R file (script file) 
7. Open the * .Rmd file (Rmarkdown file)

## Statistical analysis in this repository
Analysis conducted in this repository included:
1. T-test (statistical test) to see the difference between two population

## Working procedures in this repository
Procedures performed in this repository included:
1. Cleaning up the incomplete data  
2. Plotting piechart of data compeleteness
3. Plotting graph of coral cover for each zone
4. Plotting graph of coral cover between core zone and other zone
6. Perform the T-test to see if the mean coral cover in the core zone are significantly different from the other zone. 


## Acknowledgement
1. Prof. Rachell for all superb things we've learn in Big Data Analysis class
2. Whatsapp Group of BIO539 for all good job n the disscussion

Have a nice summers for all of you out there!
