

muStats = read.table("/Users/charles/Documents/researchData/clustering/forManuscript-organized/h3n2/kappa0_1/C3b-mds0_1/H3N2_mds.drifted.Mu.log", header = T, check.names=F)


dim1.index = seq(2, ncol(muStats),2)
dim2.index = seq(3, ncol(muStats),2)

euclidean = data.frame( muStats[,1] , sqrt(muStats[,dim1.index]^2 +  muStats[,dim2.index]^2))

write.table(euclidean, file ="/Users/charles/Documents/researchData/clustering/forManuscript-organized/h3n2/kappa0_1/C3b-mds0_1/EuclideanStat.log" , quote=F, row=F, col=T, sep="\t")
