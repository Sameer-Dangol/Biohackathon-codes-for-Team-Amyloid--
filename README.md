# Biohackathon-Team-Amyloid-beta-GWAS

plink was used in Command prompt to do most of the Quality Control and the generation of covariate file for PCA.

gemma was deployed in Windows Subsystem for Linux to generate the Kinship matrix and to construct the General Linear Model (GLM) and Mixed Linear Model (MLM). These models were then used to construct the QQ plots and Manhattan plots in Rstudio, which is an important part of Quality Constrol in Genome-wide Association Studies (GWAS)

The rscripts file contain the R scripts used to construct histograms, convert eigenvector file into covariate file and to construct the QQ plot and Manhattan plot.

The plots file contains the plots made using Rstudio, which include histograms and the QQ plots and Manhattan plots for the different linear models deployed.

