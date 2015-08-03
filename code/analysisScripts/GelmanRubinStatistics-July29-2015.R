#Gelman Rubin statistic

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


#mds precision  = 0.1
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1-rep2/H3N2_mds.indicatorsStat.log", header = T)
indicators3 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1-rep3/H3N2_mds.indicatorsStat.log", header = T)
indicators4 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1-rep5/H3N2_mds.indicatorsStat.log", header = T)

#note, I use rep 5 as rep4 because I accidentally deleted a file from rep1 before, after which I replaced rep1 with rep4.. so then I ran another run (rep5) to make up for that
#actually I do have the original rep 4's indicatorsStat under a different name.. (if I really wanted to include that replicate)
   #/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1-MISSINGFILE/H3N2_mds.indicatorsStat.log
  #indicators4 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1-MISSINGFILE/H3N2_mds.indicatorsStat.log", header = T)
# I replaced rep5 by this original rep4, and the result doesn't change:  biggest R = 1.0232621

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



#mds precision  = 0.85
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_85/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_85-rep2/H3N2_mds.indicatorsStat.log", header = T)
indicators3 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_85-rep3/H3N2_mds.indicatorsStat.log", header = T)
indicators4 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_85-rep4/H3N2_mds.indicatorsStat.log", header = T)



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




proportionOn = as.numeric( apply(indicators[-burnIn,-1], 2, mean)  )
pOn = data.frame(site=0:(ncol(indicators)-2), T.mcc=signif(proportionOn,3), T2=signif(proportionOn2,3), T3=signif(proportionOn3,3), T4=signif(proportionOn4,3), T5=signif(proportionOn5,3), T6=signif(proportionOn6,3))
write.table(pOn[order(pOn[,2], decreasing=T),][1:50,], sep="\t", quote=F, row=F) #sorted by T.mcc

# B = n/(m-1)  sum from i to m (mean_x_i - mean..)^2
# W = 1/(m*(n-1))  sum from i=1 to m  sum from j=1 to n  (x_ij  - mean_i)^2

# t^2 = (n-1)/n W + 1/n B
#R = t^2 / W

interestingIndex = which(proportionOn > 0.1)
#interestingIndex = 1:803
n = 2251
m = 10

R_vector= double(803)
for(i in 1:803){
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

hist(R_vector, br=100)
abline(v=1.2, col=2, lty=2)

R_vector
sort(R_vector, decreasing=F)



##############################################################

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



#mds precision  = estimated
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-rep2/H1N1_mds.indicatorsStat.log", header = T)





burnIn = 1:250

indicators = indicators[-burnIn,]
indicators2 = indicators2[-burnIn,]

proportionOn = as.numeric( apply(indicators[-burnIn,-1], 2, mean)  )
proportionOn2 = as.numeric( apply(indicators2[-burnIn,-1], 2, mean)  )


pOn = data.frame(site=0:(ncol(indicators)-2), T1=signif(proportionOn,3), T2=signif(proportionOn2,3))
write.table(pOn[order(pOn[,2], decreasing=T),][1:50,], sep="\t", quote=F, row=F) #sorted by T.mcc

# B = n/(m-1)  sum from i to m (mean_x_i - mean..)^2
# W = 1/(m*(n-1))  sum from i=1 to m  sum from j=1 to n  (x_ij  - mean_i)^2

# t^2 = (n-1)/n W + 1/n B
#R = t^2 / W

interestingIndex = which(proportionOn > 0.1)
n = 2251
m = 10

R_vector= double(229)
for(i in 1:229){
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

hist(R_vector, br=100)
abline(v=1.2, col=2, lty=2)

R_vector
sort(R_vector, decreasing=F)


