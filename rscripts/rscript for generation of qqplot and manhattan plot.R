#rscript to generate QQ plot and Manhattan plots for each model

# loading the required library
library("qqman")


# conversion of model text files into dataframe format for plot construction
linear_result <- read.table("result_GLM_new.assoc.txt", head = TRUE)
lin_PCA_res <- read.table("GLM_PCA_new.assoc.txt", head = TRUE)
mlm_noPCA <- read.table("MLM_K_new.assoc.txt", head = TRUE)
mlm_PCA <- read.table("MLM_K_PCA_new.assoc.txt", head = TRUE)

# jpeg files plotting for Manhattan plot and QQ plot
jpeg("Manhattan Plot for GLM without PCA.jpeg")
layout(matrix(c(1,1,2,1,1,2), nrow = 3, ncol =2, byrow = TRUE))
manhattan(linear_result, chr = "chr", bp = "ps", p = "p_score", snp = "rs", main = "Manhattan plot: GLM_noPCA", col = c("blue4", "orange3"), annotatePval = 0.01)
dev.off()

jpeg("QQ Plot for GLM without PCA.jpeg")
layout(matrix(c(1,1,2,1,1,2), nrow = 3, ncol =2, byrow = TRUE))
qq(linear_result$p_score, main = "QQ Plot of GLM_noPCA")
dev.off()

jpeg("Manhattan Plot for GLM with PCA.jpeg")
layout(matrix(c(1,1,2,1,1,2), nrow = 3, ncol =2, byrow = TRUE))
manhattan(lin_PCA_res, chr = "chr", bp = "ps", p = "p_score", snp = "rs", main = "Manhattan plot: GLM_withPCA", col = c("blue4", "orange3"), annotatePval = 0.01)
dev.off()

jpeg("QQ Plot for GLM with PCA.jpeg")
layout(matrix(c(1,1,2,1,1,2), nrow = 3, ncol =2, byrow = TRUE))
qq(lin_PCA_res$p_score, main = "QQ Plot of GLM_withPCA")
dev.off()

jpeg("Manhattan Plot for MLM with only K.jpeg")
layout(matrix(c(1,1,2,1,1,2), nrow = 3, ncol =2, byrow = TRUE))
manhattan(mlm_noPCA, chr = "chr", bp = "ps", p = "p_score", snp = "rs", main = "Manhattan plot: MLM_onlyK", col = c("blue4", "orange3"), annotatePval = 0.01)
dev.off()

jpeg("QQ Plot for MLM with only K.jpeg")
layout(matrix(c(1,1,2,1,1,2), nrow = 3, ncol =2, byrow = TRUE))
qq(mlm_noPCA$p_score, main = "QQ Plot of MLM_onlyK")
dev.off()

jpeg("Manhattan Plot for MLM with both K and PCA.jpeg")
layout(matrix(c(1,1,2,1,1,2), nrow = 3, ncol =2, byrow = TRUE))
manhattan(mlm_PCA, chr = "chr", bp = "ps", p = "p_score", snp = "rs", main = "Manhattan plot: MLM_K_and_PCA", col = c("blue4", "orange3"), annotatePval = 0.01, res = 300)
dev.off()

jpeg("QQ Plot for MLM with both K and PCA.jpeg")
layout(matrix(c(1,1,2,1,1,2), nrow = 3, ncol =2, byrow = TRUE))
qq(mlm_PCA$p_score, main = "QQ Plot of MLM_K_and_PCA")
dev.off()






