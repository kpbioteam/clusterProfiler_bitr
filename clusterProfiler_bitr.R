require("clusterProfiler", quietly = TRUE)
require("org.Hs.eg.db", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input1 = args[1]
input2 = args[2]
input3 = args[3]
output = args[4]

gene <- c(read.table(input1))
gene.df = bitr(gene$V1, fromType=input2, toType=input3, OrgDb="org.Hs.eg.db")

write.table(gene.df,file = output,row.names = FALSE)
