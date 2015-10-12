numReplicates = 5
points = seq(1,0,-0.01)

truePos0_05 = matrix(nrow=length(points),ncol=numReplicates )
falsePos0_05 = matrix(nrow=length(points),ncol=numReplicates )

truePos0_1 = matrix(nrow=length(points),ncol=numReplicates )
falsePos0_1 = matrix(nrow=length(points),ncol=numReplicates )

truePos0_2 = matrix(nrow=length(points),ncol=numReplicates )
falsePos0_2 = matrix(nrow=length(points),ncol=numReplicates )

truePos0_5 = matrix(nrow=length(points),ncol=numReplicates )
falsePos0_5 = matrix(nrow=length(points),ncol=numReplicates )

#5 replicates now:
for(run in 1:numReplicates){
  indicators = read.table(paste("/Users/charles/Documents/researchData/clustering/simulations/rep",run,"/H3N2_sim_mds.indicatorsStat.log", sep=""), header = T)

  indicators0_05 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/stage1-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)   
  indicators0_1 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/stage2-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
  indicators0_2 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/stage3-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
  
  
#    indicators0_05 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s5-nb1-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
#    indicators0_1 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s5-nb2-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
#    indicators0_2 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s5-nb4-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
  
  
#  indicators0_05 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s5-nb1-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
#  indicators0_1 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s5-nb3-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
#  indicators0_2 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s5-nb5-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
 
 #  indicators0_05 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s10-nb1-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
#    indicators0_1 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s10-nb2-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
#    indicators0_2 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s10-nb4-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
  
  
#  indicators0_05 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s10-nb1-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
#  indicators0_1 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s10-nb3-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
#  indicators0_2 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s10-nb5-k0_3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
  
    
#  indicators0_05 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s10-nb1-sDrift1-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
 # indicators0_1 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s10-nb3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
#  indicators0_2 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s10-nb5-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
 
 # indicators0_05 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s5-nb1-sDrift1-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
  #indicators0_05 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s5-nb1-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)  
  #indicators0_1 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s5-nb3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
  #indicators0_2 = read.table( paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/n30-s5-nb5-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
  
  
# indicators0_05 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/stage1-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)   
#indicators0_1 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/stage2-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)
# indicators0_2 = read.table(paste("/Users/charles/Documents/researchData/clustering/simulation-newThinning/stage3-rep",run,"/H3N2_mds.indicatorsStat.log", sep=""), header = T)

proportionOn = as.numeric( apply(indicators[,-1], 2, mean)  )

burnIn = 1:100
proportionOn0_1 = as.numeric( apply(indicators0_1[-burnIn,-1], 2, mean)  )
proportionOn0_05 = as.numeric( apply(indicators0_05[-burnIn,-1], 2, mean)  )
proportionOn0_2 = as.numeric( apply(indicators0_2[-burnIn,-1], 2, mean)  )

resultSummary = data.frame(truth=proportionOn, 
        cr0_2= proportionOn0_2, cr0_1= proportionOn0_1, cr0_05= proportionOn0_05)

resultSummary[ resultSummary$truth==1, ]
apply(resultSummary[ resultSummary$truth==1, ], 2, mean)

16*apply(resultSummary[ resultSummary$truth==1, ], 2, mean) #trevor doesn't think this is a very good measure - prefer draw cutoff
(803-16)*apply(resultSummary[ resultSummary$truth==0, ], 2, mean) #trevor doesn't think this is a very good measure



for(i in 1:length(points)){
    result = proportionOn0_05 > points[i]
    truePos0_05[i,run] = sum( result & proportionOn ==1)
    falsePos0_05[i,run] = sum( result==TRUE & proportionOn ==0)
    
    result = proportionOn0_1 > points[i]
    truePos0_1[i,run] =  sum( result & proportionOn ==1)
    falsePos0_1[i,run] =  sum( result==TRUE & proportionOn ==0)
    
    result = proportionOn0_2 > points[i]
    truePos0_2[i,run] =  sum( result & proportionOn ==1)
    falsePos0_2[i,run] =  sum( result==TRUE & proportionOn ==0)
}



#avgfalsePos = 1-falsePos
#plot(truePos~avgfalsePos, type="n")
#lines(truePos~avgfalsePos)

}



#minus 1 because I don't want to count the root node 
avgtruePos0_05 = apply(truePos0_05,1, mean) -1
avgtruePos0_1 = apply(truePos0_1,1, mean)-1
avgtruePos0_2 = apply(truePos0_2,1, mean)-1

avgfalsePos0_05 = apply(falsePos0_05,1, mean)
avgfalsePos0_1 = apply(falsePos0_1,1, mean)
avgfalsePos0_2 = apply(falsePos0_2,1, mean)

pointsRange = c(1,11,21,31,41,51,61,71,81,91)
points[pointsRange]

#setEPS()
#pdf("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/analysis/avgTrueVsFalsePositives-completionRate-10replicates.pdf")

myColors = c("royalblue4", "orangered", "seagreen","mediumpurple3",   "steelblue1" ,"snow3" )

plot( avgtruePos0_05~ avgfalsePos0_05, xlim=c(0,15), ylim=c(0,16), type="n", xlab="average number of false positives", ylab="average number of true positives", cex.lab=1.4, cex.axis=1.2)
 lines( avgtruePos0_05~ avgfalsePos0_05, col=myColors[1], lwd=4)
 lines( avgtruePos0_1~ avgfalsePos0_1, col=myColors[2], lty=1, lwd=4)
 lines( avgtruePos0_2~ avgfalsePos0_2, col=myColors[3], lty=1, lwd=4)
 
#points( avgtruePos0_05_mds0_3~ avgfalsePos0_05_mds0_3, col=1, lty=2 )

#at the p<=0.5 
 points( avgtruePos0_05[pointsRange]~ avgfalsePos0_05[pointsRange], col=myColors[1], cex=1.5 , pch=1)
 points( avgtruePos0_1[pointsRange]~ avgfalsePos0_1[pointsRange], col=myColors[2], lty=1, cex=1.5, pch=1)
 points( avgtruePos0_2[pointsRange]~ avgfalsePos0_2[pointsRange], col=myColors[3], lty=1, cex=1.5, pch=1)

  points( avgtruePos0_05[51]~ avgfalsePos0_05[51], pch=16, cex=2, col=myColors[1])
  points( avgtruePos0_1[51]~ avgfalsePos0_1[51],  lty=1, pch=16, cex=2, col=myColors[2])
  points( avgtruePos0_2[51]~ avgfalsePos0_2[51],  lty=1, pch=16, cex=2, col=myColors[3])

#abline(h=15, lty=4, lwd=3)
#legend(x=8, y=6, legend=c("0.5", "0.2", "0.1", "0.05",  expression(paste("0.05, ", kappa, "=0.3"))), col=myColors[c(1:4,6)], cex =1.4, lwd = 4, lty=c(1,1,1,1,1))
legend(x=8, y=8, legend=c("stage1", "stage2", "stage3"), col=myColors[1:3], cex =1.4, lwd = 4, lty=c(1,1,1))
#legend(x=8, y=6, legend=c("0.05", "0.1", "0.2", "0.5", "0.05-mds prec=0.3", "0.5-mds prec=0.3"), col=myColors, lwd = 4, lty=c(1,1,1,1,2,2))

#dev.off()


#Statistic used in paper
avgtruePos0_05[51]
avgfalsePos0_05[51]

avgtruePos0_1[51]
avgfalsePos0_1[51]

avgtruePos0_2[51]
avgfalsePos0_2[51]





#kappa = 0.1   (too conservative)
#Stage 1 (2sera, nbh=4, n=70/serum), 2 (+3sera, nbh=2, n=30/serum), 3 (10 sera, +5sera, nbh=1, n=30/serum)
  7.6, 10.8, 11
   0    0     0
  
#5 sera, nbhd1 with serum drift = 1 ,  nbhd 1 , nbhd 3, nbhd 5      (n=30/serum)
  8.2,                                  - ,  4.2, 6.8
  1.2                                      -    0.2    0.8

  
  
#10 sera, nbhd1 with serumdrift=1, nbhd 1, nbhd=3, nbhd=5
  10.6,                               -, 10.8, 11.8
  1   ,                                -   0     0.4

  
#kappa = 0.3
  #Stage 1 (2sera, nbh=4, n=70/serum), 2 (+3sera, nbh=2, n=30/serum), 3 (10 sera, +5sera, nbh=1,n=30/serum)
 14.4 14.4 14.4
 0.4  0.6  0.4

  #5 sera
 # 1   2   3  4   5    
  9.8  14 14  13.6  13
  2.4  0.4  0.4   0.2 1
  
  #10 sera
  # 1     2     3      4        5  
  10.6   14.2  14.4  14.2    13.8
  5      0.6   0.6    1     0.8
  

#nbh 2, 4?
  
#note: this evaluation is very stringent.. It wants the EXACT NODE.
  
#here, kappa=0.1 is too low...
#2 supersera=(wide nbh, many observations (n=70/serum)) gives very good result.
  #adding more observations doesn't help

#Given the same sample size, wider nbh (3,5) performs better than small nbh (1)
 # +-3 and +-5 doesn't make a difference.... +-5 actually performs a little bit worse
#adding more sera/cluster does help a little in terms of sensitivity.
  #but it also increases specificity for nbh=1
    #I think maybe it detects transition, just not the exact branch?
 
   
#Q. maybe fixing serum drift with small nbh is a good idea?





#minus 1 because there are only 16 cuts... 803 (node 802) was included
avgtruePos_rt = apply(truePos_rt,1, mean)  -1
avgtruePos_rt2 = apply(truePos_rt2,1, mean) -1
avgtruePos_rt3 = apply(truePos_rt3,1, mean) -1
avgtruePos_rt3_mds0_3 = apply(truePos_rt3_mds0_3,1, mean) -1
avgtruePos_rt2_mds0_3 = apply(truePos_rt2_mds0_3,1, mean) -1
avgtruePos_rt2_mds0_5 = apply(truePos_rt2_mds0_5,1, mean) -1
avgtruePos_rt_mds0_3 = apply(truePos_rt_mds0_3,1, mean) -1

avgfalsePos_rt = apply(falsePos_rt,1, mean) 
avgfalsePos_rt2 = apply(falsePos_rt2,1, mean) 
avgfalsePos_rt3 = apply(falsePos_rt3,1, mean) 
avgfalsePos_rt3_mds0_3 = apply(falsePos_rt3_mds0_3,1, mean) 
avgfalsePos_rt2_mds0_3 = apply(falsePos_rt2_mds0_3,1, mean)
avgfalsePos_rt2_mds0_5 = apply(falsePos_rt2_mds0_5,1, mean)
avgfalsePos_rt_mds0_3 = apply(falsePos_rt_mds0_3,1, mean)


setEPS()
postscript("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/analysis/avgtrueVsFalsePositivesRT.eps")

plot( avgtruePos_rt~ avgfalsePos_rt, xlim=c(0,16), ylim=c(0,16), type="n", xlab="avg. # false positives", ylab="avg. # true positives", cex.lab=1.4, cex.axis=1.2)
lines( avgtruePos_rt~ avgfalsePos_rt, lty=2)
lines( avgtruePos_rt2~ avgfalsePos_rt2, col=2, lty=2)
lines( avgtruePos_rt3~ avgfalsePos_rt3, col=4, lty=2)
lines( avgtruePos_rt3_mds0_3~ avgfalsePos_rt3_mds0_3, col=4, lty=1)
lines( avgtruePos_rt_mds0_3~ avgfalsePos_rt_mds0_3, col=1, lty=1 )
lines( avgtruePos_rt2_mds0_3~ avgfalsePos_rt2_mds0_3, col=2, lty=1)
lines( avgtruePos_rt2_mds0_5~ avgfalsePos_rt2_mds0_5, col=2, lty=3 )

#points( avgtruePos0_05_mds0_3~ avgfalsePos0_05_mds0_3, col=1, lty=2 )

#at the p<=0.5 
points( avgtruePos_rt[pointsRange]~ avgfalsePos_rt[pointsRange])
points( avgtruePos_rt2[pointsRange]~ avgfalsePos_rt2[pointsRange], col=2)
points( avgtruePos_rt3[pointsRange]~ avgfalsePos_rt3[pointsRange], col=4)
points( avgtruePos_rt3_mds0_3[pointsRange]~ avgfalsePos_rt3_mds0_3[pointsRange], col=4)
points( avgtruePos_rt_mds0_3[pointsRange]~ avgfalsePos_rt_mds0_3[pointsRange], col=1)
points( avgtruePos_rt2_mds0_3[pointsRange]~ avgfalsePos_rt2_mds0_3[pointsRange], col=2 )
points( avgtruePos_rt2_mds0_5[pointsRange]~ avgfalsePos_rt2_mds0_5[pointsRange], col=2 )

points( avgtruePos_rt[51]~ avgfalsePos_rt[51], pch="X", cex=1.5)
points( avgtruePos_rt2[51]~ avgfalsePos_rt2[51], col=2, pch="X", cex=1.5)
points( avgtruePos_rt3[51]~ avgfalsePos_rt3[51], col=4, pch="X", cex=1.5)
points( avgtruePos_rt3_mds0_3[51]~ avgfalsePos_rt3_mds0_3[51], col=4, pch="X", cex=1.5)
points( avgtruePos_rt_mds0_3[51]~ avgfalsePos_rt_mds0_3[51], col=1, pch="X", cex=1.5)
points( avgtruePos_rt2_mds0_3[51]~ avgfalsePos_rt2_mds0_3[51], col=2 , pch="X", cex=1.5)
points( avgtruePos_rt2_mds0_5[51]~ avgfalsePos_rt2_mds0_5[51], col=2 , pch="X", cex=1.5)



abline(h=15, col=6,lty=4)
legend(x=10, y=5, legend=c("rt* (still running)", "rt2", "rt3", "rt mds prec=0.3", "rt2 mds prec=0.3", "rt3 mds prec=0.3", "rt2 mds prec=0.5"), col=c(1,2,4,1,2,4,2), lty=c(2,2,2,1,1,1,3))

dev.off()







 #lines( avgtruePos0_05~ avgfalsePos0_05, col=2)
 #lines( avgtruePos0_1~ avgfalsePos0_1, col=2)
 #lines( avgtruePos0_2~ avgfalsePos0_2, col=3)
 #lines( avgtruePos0_5~ avgfalsePos0_5, col=4)


#average across replicate

#affinity matrix - later
#which(proportionOn0.5 > 0.5) is a better measure than avg pct

#complete data, mds=0.3

#use virus dates to thin...

#replicate 1, cr0_5, 755 not on. why not?
 #replaced by 428, 436?

#cr 0.5 is weird because the lack of signal comes from 1 node not being consistently detected
#looks like cr0.1 is still pretty good
#from 0.1 to 0.05, there is a huge dropoff!
  #but I kind of think that cr 0.05 still detects there is a transition,
  # but just not at the exact right location
#I am surprised that cr0_1 beats rt2.
#I am surprised that rt is so low... did I make an error during simulation?
#I am surprised that rt is so slow!


#false positive?


####

#Black = homologous, Red = off by 1 major transition, Green = off by 2 major transitions
setEPS()
postscript("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/analysis/dist-clusterTransition.eps", width=10, height=5)
s <- seq(0,15,0.01)
plot(s, dnorm(s,mean=10, sd=1), type="l", xlab="log2 titer", ylab="density")
lines(s, dnorm(s,mean=8, sd=1), col="red")
lines(s, dnorm(s,mean=6, sd=1), col="green")
dev.off()
