#Rscript for histogram of missing data

# read data into R
indmiss <- read.table(file="plink.imiss", header=TRUE) 
snpmiss <- read.table(file="plink.lmiss", header=TRUE) 

#indicates jpeg format and gives title to file
jpeg("histimiss.jpeg") 
# selects column 6, names header of file
hist(indmiss[,6],main = "histogram individual missingness")

jpeg("histlmiss.jpeg") 
hist(snpmiss[,5],main = "histogram SNP missingness") 
dev.off()
