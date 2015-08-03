
library(gplots)
library(RColorBrewer)
library(stats)

#first get the cooccurence matrix from the java program

#H1N1
virusLoc = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/H1N1_mds.drifted.VirusLocs.log", header=T, check.names=F)
#coOccur = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_1-adjacencyMatrix.txt")
#coOccur = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_3-adjacencyMatrix.txt")
#coOccur = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-adjacencyMatrix.txt")

coOccur1 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_1-adjacencyMatrix.txt")
coOccur2 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_3-adjacencyMatrix.txt")
coOccur3 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-adjacencyMatrix.txt")
coOccur4 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_4-adjacencyMatrix.txt")
coOccur5 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_5-adjacencyMatrix.txt")
coOccur6 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_6-adjacencyMatrix.txt")
coOccur7 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_7-adjacencyMatrix.txt")
coOccur8 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_8-adjacencyMatrix.txt")

coOccurS2 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_1-sample2-adjacencyMatrix.txt")
coOccurS3 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_1-sample3-adjacencyMatrix.txt")
coOccurS4 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_1-sample4-adjacencyMatrix.txt")
coOccurS5 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_1-sample5-adjacencyMatrix.txt")
coOccurS6 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/H1N1-C3b-mds0_1-sample6-adjacencyMatrix.txt")


################################################################################################################################

virusName = colnames(virusLoc)[seq(2,ncol(virusLoc),2)]
for(i in 1:length(virusName)){
  virusName[i] = substring(virusName[i], 1, nchar(virusName[i]) - 1)
}


makeMatrix <- function( M, name){
  colnames(M) = name
  rownames(M) = name  
  M = as.matrix(M)
  M = data.matrix( M/max(M) )  
}

hclust2 <- function(x, method="complete", ...)
  hclust(x, method=method, ...)

dist2 <- function(x, ...)
  as.dist(1-cor(t(x), method="pearson"))




#coOccurP = makeMatrix(coOccur, virusName)
coOccur1P = makeMatrix(coOccur1, virusName)
coOccur2P = makeMatrix(coOccur2, virusName)
coOccur3P = makeMatrix(coOccur3, virusName) # note this is mds varies
coOccur4P = makeMatrix(coOccur4, virusName)
coOccur5P = makeMatrix(coOccur5, virusName)
coOccur6P = makeMatrix(coOccur6, virusName)
coOccur7P = makeMatrix(coOccur7, virusName)
coOccur8P = makeMatrix(coOccur8, virusName)

coOccurS2P = makeMatrix(coOccurS2, virusName)
coOccurS3P = makeMatrix(coOccurS3, virusName)
coOccurS4P = makeMatrix(coOccurS4, virusName)
coOccurS5P = makeMatrix(coOccurS5, virusName)
coOccurS6P = makeMatrix(coOccurS5, virusName)

image(coOccur1P, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=FALSE)

#Notice, the clustering is not really perfect here - I woudl have instead like that the dendrogram follows a more phylogenetic consideration
#so the nearby clusters in they phylogenetic map are drawn together
png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1-HCA.png", width=3000, height=3000)
heatmap.2(coOccur1P, distfun=dist2, hclustfun=hclust2,trace="none", breaks=(seq(0,5)/5),  
      col = rev(brewer.pal(5,"Oranges"))[5:1],margin=c(20,20), key=TRUE, cexRow=1.5, cexCol=1.5)  #6 obvious clusters
dev.off()

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_3-HCA.png", width=3000, height=3000)
heatmap.2(coOccur2P, distfun=dist2, hclustfun=hclust2,trace="none", breaks=(seq(0,5)/5),  
          col = rev(brewer.pal(5,"Oranges"))[5:1],margin=c(20,20), key=TRUE, cexRow=1.5, cexCol=1.5) 
dev.off()

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-HCA.png", width=3000, height=3000)
heatmap.2(coOccur3P, distfun=dist2, hclustfun=hclust2,trace="none", breaks=(seq(0,5)/5),  
          col = rev(brewer.pal(5,"Oranges"))[5:1],margin=c(20,20), key=TRUE, cexRow=1.5, cexCol=1.5) 
dev.off()


heatmap.2(coOccurS2P, distfun=dist2, hclustfun=hclust2,trace="none", breaks=(seq(0,5)/5),  
          col = rev(brewer.pal(5,"Oranges"))[5:1],margin=c(20,20), key=TRUE, cexRow=1.5, cexCol=1.5)

heatmap.2(coOccurS3P, distfun=dist2, hclustfun=hclust2,trace="none", breaks=(seq(0,5)/5),  
          col = rev(brewer.pal(5,"Oranges"))[5:1],margin=c(20,20), key=TRUE, cexRow=1.5, cexCol=1.5)

heatmap.2(coOccurS4P, distfun=dist2, hclustfun=hclust2,trace="none", breaks=(seq(0,5)/5),  
          col = rev(brewer.pal(5,"Oranges"))[5:1],margin=c(20,20), key=TRUE, cexRow=1.5, cexCol=1.5)

heatmap.2(coOccurS5P, distfun=dist2, hclustfun=hclust2,trace="none", breaks=(seq(0,5)/5),  
          col = rev(brewer.pal(5,"Oranges"))[5:1],margin=c(20,20), key=TRUE, cexRow=1.5, cexCol=1.5)



#Print clusters to file...
#with 3 levels.
#virus name   #mds 0.1  
hc.rows <- hclust2(dist2(coOccur1P))
virusClusters = data.frame(virusName, cluster=as.numeric(cutree(hc.rows, k=6)))
virusClusters[order(virusClusters$cluster),]

#mds 0.3
hc.rows <- hclust2(dist2(coOccur2P))
virusClusters = data.frame(virusName, cluster=as.numeric(cutree(hc.rows, k=12)))
virusClusters[order(virusClusters$cluster),]






#orderByDendrogram <- function(M){
#  Rowv <- rowMeans(M, na.rm = FALSE)
#  hcr <- hclust2(dist2(M))
#  ddr <- as.dendrogram(hcr)
#  dr <- reorder(ddr, Rowv)
#  rowOrder <- order.dendrogram(dr)
#  rowOrder
#}

#rowInd1P = orderByDendrogram(coOccur1P)

#Use the tree to order viruses instead
virusName.Ordered = read.table('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-virusNames.ordered.txt', header=F, string=F)[,1]
virusName.Ordered = virusName.Ordered[length(virusName.Ordered):1]  #reverse order
virus.order = integer(length(virusName))
for(i in 1:length(virusName)){
  virus.order[i] = which(virusName == virusName.Ordered[i])
}



coOccur1P.ordered = coOccur1P[virus.order,virus.order]
coOccur2P.ordered = coOccur2P[virus.order, virus.order]
coOccur3P.ordered = coOccur3P[virus.order, virus.order]
coOccur4P.ordered = coOccur4P[virus.order, virus.order]
coOccur5P.ordered = coOccur5P[virus.order, virus.order]
coOccur6P.ordered = coOccur6P[virus.order, virus.order]
coOccur7P.ordered = coOccur7P[virus.order, virus.order]
coOccur8P.ordered = coOccur8P[virus.order, virus.order]

coOccurS2P.ordered = coOccurS2P[virus.order, virus.order]
coOccurS3P.ordered = coOccurS3P[virus.order, virus.order]
coOccurS4P.ordered = coOccurS4P[virus.order, virus.order]
coOccurS5P.ordered = coOccurS5P[virus.order, virus.order]
coOccurS6P.ordered = coOccurS6P[virus.order, virus.order]


write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-matrix.txt", sep=""), coOccur1P.ordered, quote=F, sep="\t", col=F, row=F)
write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_3-matrix.txt", sep=""), coOccur2P.ordered, quote=F, sep="\t", col=F, row=F)

write.table(file=paste(dirMatrix, "H1N1-C3b-mds-matrix.txt", sep=""), coOccur3P.ordered, quote=F, sep="\t", col=F, row=F)

write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-s2-matrix.txt", sep=""), coOccurS2P.ordered, quote=F, sep="\t", col=F, row=F)
write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-s3-matrix.txt", sep=""), coOccurS3P.ordered, quote=F, sep="\t", col=F, row=F)
write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-s4-matrix.txt", sep=""), coOccurS4P.ordered, quote=F, sep="\t", col=F, row=F)
write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-s5-matrix.txt", sep=""), coOccurS5P.ordered, quote=F, sep="\t", col=F, row=F)
write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-s6-matrix.txt", sep=""), coOccurS6P.ordered, quote=F, sep="\t", col=F, row=F)



dirMatrix = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices/orderedByPhylogeny/"
write.table(file=paste(dirMatrix, "H1N1-names.txt", sep=""), colnames(coOccur1P.ordered), quote=F, sep="\t", col=F, row=F)




png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1-ordered.png", width=2000, height=2000)
  par(mar=c(12, 1,1,12))
  image(1:length(virusName.Ordered), 1:length(virusName.Ordered), coOccur1P.ordered, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
  axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
  axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_3-ordered.png", width=2000, height=2000)
  par(mar=c(12, 1,1,12))
  image(1:length(virusName.Ordered), 1:length(virusName.Ordered), coOccur2P.ordered, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
  axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
  axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-ordered.png", width=2000, height=2000)
  par(mar=c(12, 1,1,12))
  image(1:length(virusName.Ordered), 1:length(virusName.Ordered), coOccur3P.ordered, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
  axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
  axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

#mds 0.4
png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/heatmap/H1N1-C3b-mds0_4-ordered.png", width=2000, height=2000)
par(mar=c(12, 1,1,12))
image(1:length(virusName.Ordered), 1:length(virusName.Ordered), coOccur4P.ordered, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/heatmap/H1N1-C3b-mds0_5-ordered.png", width=2000, height=2000)
par(mar=c(12, 1,1,12))
image(1:length(virusName.Ordered), 1:length(virusName.Ordered), coOccur5P.ordered, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/heatmap/H1N1-C3b-mds0_6-ordered.png", width=2000, height=2000)
par(mar=c(12, 1,1,12))
image(1:length(virusName.Ordered), 1:length(virusName.Ordered), coOccur6P.ordered, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/heatmap/H1N1-C3b-mds0_7-ordered.png", width=2000, height=2000)
par(mar=c(12, 1,1,12))
image(1:length(virusName.Ordered), 1:length(virusName.Ordered), coOccur7P.ordered, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/heatmap/H1N1-C3b-mds0_8-ordered.png", width=2000, height=2000)
par(mar=c(12, 1,1,12))
image(1:length(virusName.Ordered), 1:length(virusName.Ordered), coOccur8P.ordered, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()




topBottom12 = coOccur2P.ordered
for(i in 1:(nrow(topBottom12)-1)){
  for(j in (i+1):nrow(topBottom12)){
    topBottom12[i,j] = coOccur1P.ordered[i,j]
  }
}
image(topBottom12, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=FALSE)
  png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1_vs0_3-ordered.png", width=2000, height=2000)
  par(mar=c(12, 1,1,12))
  image(1:length(virusName.Ordered), 1:length(virusName.Ordered), topBottom12, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
  axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
  axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1vs0_3-matrix.txt", sep=""), topBottom12, quote=F, sep="\t", col=F, row=F)



#layout(mat=rbind(4:3,2:1), widths=c(0.1,4), heights=c(0.1,4))
#heatmap.2(coOccur1P.ordered, Rowv=FALSE,dendrogram="none", distfun=dist2, trace="none", breaks=(seq(0,5)/5),  
#          col = rev(brewer.pal(5,"Oranges"))[5:1],margin=c(5,5), key=FALSE, cexRow=1, cexCol=1)  #6 obvious clusters
#http://stackoverflow.com/questions/15351575/moving-color-key-in-r-heatmap-2-function-of-gplots-package

topBottom13 = coOccur3P.ordered
for(i in 1:(nrow(topBottom13)-1)){
  for(j in (i+1):nrow(topBottom13)){
    topBottom13[i,j] = coOccur1P.ordered[i,j]
  }
}
image(topBottom13, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=FALSE)
  png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1_vsEstimates-ordered.png", width=2000, height=2000)
  par(mar=c(12, 1,1,12))
  image(1:length(virusName.Ordered), 1:length(virusName.Ordered), topBottom13, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
  axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
  axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1vsEstimated-matrix.txt", sep=""), topBottom13, quote=F, sep="\t", col=F, row=F)



topBottom23 = coOccur3P.ordered
for(i in 1:(nrow(topBottom23)-1)){
  for(j in (i+1):nrow(topBottom23)){
    topBottom23[i,j] = coOccur2P.ordered[i,j]
  }
}
image(topBottom23, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=FALSE)
png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_3_vsEstimates-ordered.png", width=2000, height=2000)
  par(mar=c(12, 1,1,12))
  image(1:length(virusName.Ordered), 1:length(virusName.Ordered), topBottom23, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
  axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
  axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_3vsEstimated-matrix.txt", sep=""), topBottom23, quote=F, sep="\t", col=F, row=F)


####################################################################
#with tree sample 2
topBottom1S2 = coOccurS2P.ordered
for(i in 1:(nrow(topBottom1S2)-1)){
  for(j in (i+1):nrow(topBottom1S2)){
    topBottom1S2[i,j] = coOccur1P.ordered[i,j]
  }
}

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1_vsS2-ordered.png", width=2000, height=2000)
  par(mar=c(12, 1,1,12))
  image(1:length(virusName.Ordered), 1:length(virusName.Ordered), topBottom1S2, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
  axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
  axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-s1vs2-matrix.txt", sep=""), topBottom1S2, quote=F, sep="\t", col=F, row=F)

#with tree sample 3
topBottom1S3 = coOccurS3P.ordered
for(i in 1:(nrow(topBottom1S3)-1)){
  for(j in (i+1):nrow(topBottom1S3)){
    topBottom1S3[i,j] = coOccur1P.ordered[i,j]
  }
}

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1_vsS3-ordered.png", width=2000, height=2000)
  par(mar=c(12, 1,1,12))
  image(1:length(virusName.Ordered), 1:length(virusName.Ordered), topBottom1S3, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
  axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
  axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-s1vs3-matrix.txt", sep=""), topBottom1S3, quote=F, sep="\t", col=F, row=F)



#with tree sample 4
topBottom1S4 = coOccurS4P.ordered
for(i in 1:(nrow(topBottom1S4)-1)){
  for(j in (i+1):nrow(topBottom1S4)){
    topBottom1S4[i,j] = coOccur1P.ordered[i,j]
  }
}

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1_vsS4-ordered.png", width=2000, height=2000)
  par(mar=c(12, 1,1,12))
  image(1:length(virusName.Ordered), 1:length(virusName.Ordered), topBottom1S4, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
  axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
  axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-s1vs4-matrix.txt", sep=""), topBottom1S4, quote=F, sep="\t", col=F, row=F)


#with tree sample 5
topBottom1S5 = coOccurS5P.ordered
for(i in 1:(nrow(topBottom1S5)-1)){
  for(j in (i+1):nrow(topBottom1S5)){
    topBottom1S5[i,j] = coOccur1P.ordered[i,j]
  }
}

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1_vsS5-ordered.png", width=2000, height=2000)
  par(mar=c(12, 1,1,12))
  image(1:length(virusName.Ordered), 1:length(virusName.Ordered), topBottom1S5, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
  axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
  axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-s1vs5-matrix.txt", sep=""), topBottom1S5, quote=F, sep="\t", col=F, row=F)




#with tree sample 6
topBottom1S6 = coOccurS6P.ordered
for(i in 1:(nrow(topBottom1S6)-1)){
  for(j in (i+1):nrow(topBottom1S6)){
    topBottom1S6[i,j] = coOccur1P.ordered[i,j]
  }
}

png("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1_vsS6-ordered.png", width=2000, height=2000)
par(mar=c(12, 1,1,12))
image(1:length(virusName.Ordered), 1:length(virusName.Ordered), topBottom1S6, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=F, xlab="", ylab="")
axis(4, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
axis(1, at = seq(1, length(virusName.Ordered)), labels=virusName.Ordered, las=2, cex.axis=1, tick=0, line=-1 )
dev.off()

write.table(file=paste(dirMatrix, "H1N1-C3b-mds0_1-s1vs6-matrix.txt", sep=""), topBottom1S6, quote=F, sep="\t", col=F, row=F)



#columns have been sorted differently
  #http://www.r-bloggers.com/drawing-heatmaps-in-r/





######################################################################################################################################################










# cluster rows
#hc.rows <- hclust2(dist2(coOccur1P))
#png()
#plot(hc.rows)

# transpose the matrix and cluster columns
hc.cols <- hclust2(dist2(t(coOccur1P)))
plot(hc.cols)

heatmap.2(coOccur1P[cutree(hc.rows, k=6)==1,cutree(hc.rows, k=6)==1],scale='none',  distfun=dist2, trace="none", breaks=(seq(0,5)/5),   col = rev(brewer.pal(5,"Oranges"))[5:1] ,margin=c(10,10), key=TRUE, )
heatmap.2(coOccur1P[cutree(hc.rows, k=6)==2,cutree(hc.rows, k=6)==2],scale='none',  distfun=dist2, trace="none", breaks=(seq(0,5)/5),   col = rev(brewer.pal(5,"Oranges"))[5:1] ,margin=c(10,10), key=TRUE, )
heatmap.2(coOccur1P[cutree(hc.rows, k=6)==3,], Colv=as.dendrogram(hc.cols) ,scale='none',  distfun=dist2, trace="none", breaks=(seq(0,5)/5),   col = rev(brewer.pal(5,"Oranges"))[5:1] ,margin=c(10,10), key=TRUE, )
heatmap.2(coOccur1P[cutree(hc.rows, k=6)==4,], Colv=as.dendrogram(hc.cols) ,scale='none',  distfun=dist2, trace="none", breaks=(seq(0,5)/5),   col = rev(brewer.pal(5,"Oranges"))[5:1] ,margin=c(10,10), key=TRUE, )
heatmap.2(coOccur1P[cutree(hc.rows, k=6)==5,], Colv=as.dendrogram(hc.cols) ,scale='none',  distfun=dist2, trace="none", breaks=(seq(0,5)/5),   col = rev(brewer.pal(5,"Oranges"))[5:1] ,margin=c(10,10), key=TRUE, )


#by tree
rownames(coOccur1P)[cutree(hc.rows, k=6)==1]




pdf(file = "/hierarchicalClustering.pdf", width=40, height=40)
plot(hc.rows, cex=0.7)
hca.rect = rect.hclust(hc.rows, k=11, border="red")
dev.off()



virusCluster = integer(length(virusName))
for(k in 1:6){
  cluster = hca.rect[[k]]
  for(i in 1:length(cluster)){   	 	
    virusCluster[cluster[i]] = k
  }
}


virus.attributes = data.frame(virusName, virusCluster)




heatmap(mtscaled[cutree(hc.rows,k=2)==1,], Colv=as.dendrogram(hc.cols), scale='none')




#how to convert from the summary heatmap to membership assingment?




#Rowv2 <- rowMeans(coOccur2P, na.rm = FALSE)
#hcr2 <- hclust2(dist2(coOccur2P))
#ddr2 <- as.dendrogram(hcr2)
#dr2 <- reorder(ddr2, Rowv2)
#rowInd2P <- order.dendrogram(dr2)

#coOccur1P.ordered.2 = coOccur1P[rowInd2P,rowInd2P]
#coOccur2P.ordered.2 = coOccur2P[rowInd2P, rowInd2P]
#coOccur3P.ordered.2 = coOccur3P[rowInd2P, rowInd2P]

#topBottom23 = coOccur3P.ordered.2
#for(i in 1:(nrow(topBottom23)-1)){
#  for(j in (i+1):nrow(topBottom23)){
#    topBottom23[i,j] = coOccur2P.ordered.2[i,j]
#  }
#}
#image(topBottom23, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=FALSE)

#topBottom12.2 = coOccur1P.ordered.2
#for(i in 1:(nrow(topBottom12.2)-1)){
#  for(j in (i+1):nrow(topBottom12.2)){
#    topBottom12.2[i,j] = coOccur2P.ordered.2[i,j]
#  }
#}
#image(topBottom12.2, col=rev(brewer.pal(5,"Oranges"))[5:1], axes=FALSE)







set.seed(123)
x <- rnorm(10)
hc <- hclust(dist(x))
hc$order
dd <- as.dendrogram(hc)
order.dendrogram(dd) ## the same :
stopifnot(hc$order == order.dendrogram(dd))


#Task: plot a pair of heatmap plots at the same time.



















####################################################################################################################
### or ###  

#in windows,  can simply use this version
heatmap.2(coOccurP,   trace="none", breaks=(seq(0,5)/5),   col = rev(brewer.pal(5,"Oranges"))[5:1] ,margin=c(10,10), key=TRUE)



#display.brewer.all()
#http://simplystatistics.org/2011/10/17/colors-in-r/

heatmap(coOccurM)
#heatmap.2(coOccurM[1:200,1:200], col=redgreen, breaks=c(0, 0.6,0.8,1), trace="none", Rowv=TRUE, Colv=TRUE)



