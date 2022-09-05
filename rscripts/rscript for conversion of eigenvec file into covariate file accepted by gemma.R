#Conversion of eigenvec file into covariate file accepted by gemma
pca <- read.table("pca_10.eigenvec", sep = " ")
View(pca)

df <- subset(pca, select = -(V2))
View(df)

write.table(df, file = "pca_10_covariate.txt", sep = "\t", col.names = FALSE, row.names = FALSE)