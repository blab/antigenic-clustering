#Gelman Rubin statistic

#Choose one set:

#H3N2
#mds precision  = 0.05
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-rep2/H3N2_mds.indicatorsStat.log", header = T)
indicators3 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-rep3/H3N2_mds.indicatorsStat.log", header = T)
indicators4 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-rep4/H3N2_mds.indicatorsStat.log", header = T)
indicators5 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_05-rep5/H3N2_mds.indicatorsStat.log", header = T)
indicators6 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_05-rep6/H3N2_mds.indicatorsStat.log", header = T)
indicators7 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_05-rep7/H3N2_mds.indicatorsStat.log", header = T)
indicators8 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_05-rep8/H3N2_mds.indicatorsStat.log", header = T)
indicators9 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_05-rep9/H3N2_mds.indicatorsStat.log", header = T)
indicators10 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_05-rep10/H3N2_mds.indicatorsStat.log", header = T)

outProportionOn = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.05-outProportionOn.txt"
outGelmanRubinStats = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.05-rankedGelmanRubinStats.txt"
outGelmanRubinPlot = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.05-outGelmanRubinPlot.pdf"
outConcordancePlot = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.05-outConcordancePlot"


#mds precision  = 0.1
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1-rep2/H3N2_mds.indicatorsStat.log", header = T)
indicators3 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1-rep3/H3N2_mds.indicatorsStat.log", header = T)
indicators4 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1-rep5/H3N2_mds.indicatorsStat.log", header = T) #note. this replaces the rep 4 that I deleted by accident
indicators5 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_1-rep5/H3N2_mds.indicatorsStat.log", header = T)
indicators6 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_1-rep6/H3N2_mds.indicatorsStat.log", header = T)
indicators7 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_1-rep7/H3N2_mds.indicatorsStat.log", header = T)
indicators8 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_1-rep8/H3N2_mds.indicatorsStat.log", header = T)
indicators9 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_1-rep9/H3N2_mds.indicatorsStat.log", header = T)
indicators10 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_1-rep10/H3N2_mds.indicatorsStat.log", header = T)
outProportionOn = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.1-outProportionOn.txt"
outGelmanRubinStats = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.1-rankedGelmanRubinStats.txt"
outGelmanRubinPlot = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.1-outGelmanRubinPlot.pdf"
outConcordancePlot = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.1-outConcordancePlot"

#mds precision  = 0.15
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_15/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_15-rep2/H3N2_mds.indicatorsStat.log", header = T)
indicators3 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_15-rep3/H3N2_mds.indicatorsStat.log", header = T)
indicators4 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_15-rep4/H3N2_mds.indicatorsStat.log", header = T)
indicators5 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_15-rep5/H3N2_mds.indicatorsStat.log", header = T)
indicators6 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_15-rep6/H3N2_mds.indicatorsStat.log", header = T)
indicators7 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_15-rep7/H3N2_mds.indicatorsStat.log", header = T)
indicators8 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_15-rep8/H3N2_mds.indicatorsStat.log", header = T)
indicators9 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_15-rep9/H3N2_mds.indicatorsStat.log", header = T)
indicators10 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H3N2/C3b-mds0_15-rep10/H3N2_mds.indicatorsStat.log", header = T)
outProportionOn = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.15-outProportionOn.txt"
outGelmanRubinStats = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.15-rankedGelmanRubinStats.txt"
outGelmanRubinPlot = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics/H3N2-0.15-outGelmanRubinPlot.pdf"

#################
#or
#H1N1
#mds precision  = 0.1
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1-rep2/H1N1_mds.indicatorsStat.log", header = T)
indicators3 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_1-rep3/H1N1_mds.indicatorsStat.log", header = T)
indicators4 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_1-rep4/H1N1_mds.indicatorsStat.log", header = T)
indicators5 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_1-rep5/H1N1_mds.indicatorsStat.log", header = T)
indicators6 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_1-rep6/H1N1_mds.indicatorsStat.log", header = T)
indicators7 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_1-rep7/H1N1_mds.indicatorsStat.log", header = T)
indicators8 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_1-rep8/H1N1_mds.indicatorsStat.log", header = T)
indicators9 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_1-rep9/H1N1_mds.indicatorsStat.log", header = T)
indicators10 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_1-rep10/H1N1_mds.indicatorsStat.log", header = T)
outProportionOn = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/MCMC-diagnostics/H1N1-0.1-outProportionOn.txt"
outGelmanRubinStats = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/MCMC-diagnostics/H1N1-0.1-rankedGelmanRubinStats.txt"
outGelmanRubinPlot = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/MCMC-diagnostics/H1N1-0.1-outGelmanRubinPlot.pdf"



#mds precision  = 0.3
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_3/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_3-rep2/H1N1_mds.indicatorsStat.log", header = T)
indicators3 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_3-rep3/H1N1_mds.indicatorsStat.log", header = T)
indicators4 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_3-rep4/H1N1_mds.indicatorsStat.log", header = T)
indicators5 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_3-rep5/H1N1_mds.indicatorsStat.log", header = T)
indicators6 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_3-rep6/H1N1_mds.indicatorsStat.log", header = T)
indicators7 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_3-rep7/H1N1_mds.indicatorsStat.log", header = T)
indicators8 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_3-rep8/H1N1_mds.indicatorsStat.log", header = T)
indicators9 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_3-rep9/H1N1_mds.indicatorsStat.log", header = T)
indicators10 = read.table("/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/H1N1/C3b-mds0_3-rep10/H1N1_mds.indicatorsStat.log", header = T)
outProportionOn = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/MCMC-diagnostics/H1N1-0.3-outProportionOn.txt"
outGelmanRubinStats = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/MCMC-diagnostics/H1N1-0.3-rankedGelmanRubinStats.txt"
outGelmanRubinPlot = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/MCMC-diagnostics/H1N1-0.3-outGelmanRubinPlot.pdf"


###########################################################################################

burnIn = 1:250

indicators = indicators[-burnIn,]
indicators2 = indicators2[-burnIn,]
indicators3 = indicators3[-burnIn,]
indicators4 = indicators4[-burnIn,]
indicators5 = indicators5[-burnIn,]
indicators6 = indicators6[-burnIn,]
indicators7 = indicators7[-burnIn,]
indicators8 = indicators8[-burnIn,]
indicators9 = indicators9[-burnIn,]
indicators10 = indicators10[-burnIn,]


#Compute the Gelman Rubin Statistic
# B = n/(m-1)  sum from i to m (mean_x_i - mean..)^2
# W = 1/(m*(n-1))  sum from i=1 to m  sum from j=1 to n  (x_ij  - mean_i)^2

# t^2 = (n-1)/n W + 1/n B
#R = t^2 / W

#interestingIndex = which(proportionOn > 0.1)
numNodes = (ncol(indicators)-1)
interestingIndex = 1:numNodes
n = 2251
m = 10

R_vector= double(numNodes)
for(i in 1:numNodes){
  R_vector[i] = NA
}

for(columnNum in (interestingIndex+1)){
  X = c(indicators[,columnNum], indicators2[,columnNum], indicators3[,columnNum], indicators4[,columnNum],
      indicators5[,columnNum], indicators6[,columnNum], indicators7[,columnNum], indicators8[,columnNum],
      indicators9[,columnNum], indicators10[,columnNum])

  meani = double(m)
  meani[1] = mean(indicators[,columnNum])
  meani[2] = mean(indicators2[,columnNum])
  meani[3] = mean(indicators3[,columnNum])
  meani[4] = mean(indicators4[,columnNum])
  meani[5] = mean(indicators5[,columnNum])
  meani[6] = mean(indicators6[,columnNum])
  meani[7] = mean(indicators7[,columnNum])
  meani[8] = mean(indicators8[,columnNum])
  meani[9] = mean(indicators9[,columnNum])
  meani[10] = mean(indicators10[,columnNum])
  


 meanDotDot = mean(X)
 
B=0
for(i in 1:10){
  B=B + (meani[i] - meanDotDot)^2
}
B = n/(m-1) *B


 W= sum( (indicators[,columnNum] - meani[1])^2 ) + sum( (indicators2[,columnNum] - meani[2])^2 ) + sum( (indicators3[,columnNum] - meani[3])^2 ) +sum( (indicators4[,columnNum] - meani[4])^2 )
 +sum( (indicators5[,columnNum] - meani[5])^2 ) + sum( (indicators6[,columnNum] - meani[6])^2 ) + sum( (indicators7[,columnNum] - meani[7])^2 ) +sum( (indicators8[,columnNum] - meani[8])^2 )
 +sum( (indicators9[,columnNum] - meani[9])^2 ) + sum( (indicators10[,columnNum] - meani[10])^2 ) 
   
W = 1/(m*(n-1)) *W

t_sqr = (n-1)/n *W + 1/n * B
R = t_sqr/W

 R_vector[columnNum-1] = R
}

pdf(outGelmanRubinPlot, width=6, height = 4)
 hist(R_vector, br=200, xlim=c(1,1.3), main="Distribution of Gelman-Rubin statistic across nodes")
 abline(v=1.2, col=2, lty=2)
dev.off()
 
R.df = data.frame(node=0:(numNodes-1), GR=R_vector)
#R_vector
write.table( R.df[order(R.df$GR, decreasing=F),], file =outGelmanRubinStats , quote=F, row=F)




proportionOn = as.numeric( apply(indicators[-burnIn,-1], 2, mean)  )
proportionOn2 = as.numeric( apply(indicators2[-burnIn,-1], 2, mean)  )
proportionOn3 = as.numeric( apply(indicators3[-burnIn,-1], 2, mean)  )
proportionOn4 = as.numeric( apply(indicators4[-burnIn,-1], 2, mean)  )
proportionOn5 = as.numeric( apply(indicators5[-burnIn,-1], 2, mean)  )
proportionOn6 = as.numeric( apply(indicators6[-burnIn,-1], 2, mean)  )
proportionOn7 = as.numeric( apply(indicators7[-burnIn,-1], 2, mean)  )
proportionOn8 = as.numeric( apply(indicators8[-burnIn,-1], 2, mean)  )
proportionOn9 = as.numeric( apply(indicators9[-burnIn,-1], 2, mean)  )
proportionOn10 = as.numeric( apply(indicators10[-burnIn,-1], 2, mean)  )

pOn = data.frame(site=0:(ncol(indicators)-2), T.mcc=signif(proportionOn,3), 
                 T2=signif(proportionOn2,3), T3=signif(proportionOn3,3),
                 T4=signif(proportionOn4,3), T5=signif(proportionOn5,3), 
                 T6=signif(proportionOn6,3), T7=signif(proportionOn7,3),
                 T8=signif(proportionOn8,3),T9=signif(proportionOn9,3),T10=signif(proportionOn10,3))

write.table(pOn[order(pOn[,2], decreasing=T),], file =outProportionOn , sep="\t", quote=F, row=F) #sorted by T.mcc



myColors = c("seagreen","orangered","steelblue1" , "mediumpurple3", "royalblue4",  "snow3" )
pdf(paste(outConcordancePlot, "1-2.pdf", sep=""), width=4, height = 4)
 plot(proportionOn, proportionOn2, xlab="replicate 1", ylab="replicate 2", cex=1, pch=16, col=myColors[3])
 abline(0,1, col=myColors[5],  lty=2)
dev.off()

pdf(paste(outConcordancePlot, "1-3.pdf", sep=""), width=4, height = 4)
 plot(proportionOn, proportionOn3, xlab="replicate 1", ylab="replicate 3", cex=1, pch=16, col=myColors[3])
 abline(0,1, col=myColors[5],  lty=2)
dev.off()


pdf(paste(outConcordancePlot, "1-4.pdf", sep=""), width=4, height = 4)
 plot(proportionOn, proportionOn3, xlab="replicate 1", ylab="replicate 4", cex=1, pch=16, col=myColors[3])
 abline(0,1, col=myColors[5],  lty=2)
dev.off()


plot(proportionOn, proportionOn3)
plot(proportionOn, proportionOn4)
plot(proportionOn, proportionOn5)

plot(proportionOn, proportionOn6)

plot(proportionOn, proportionOn7)
plot(proportionOn, proportionOn8)
plot(proportionOn, proportionOn9)
plot(proportionOn, proportionOn10)

