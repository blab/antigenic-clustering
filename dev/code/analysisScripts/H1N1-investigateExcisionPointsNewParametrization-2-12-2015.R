
#dir = "/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/"
dir = "/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/"
indicators = read.table( paste(dir, "H1N1_mds.indicatorsStat.log", sep=""), header = T)
Mu = read.table( paste(dir, "H1N1_mds.muStat.log", sep=""), header=T)



burnIn = 1:250  #for the full data's default run

proportionOn = as.numeric( apply(indicators[-burnIn,-1], 2, mean)  )

Mudim1 = Mu[-burnIn,seq(2,ncol(Mu),2)]

onMu.dim1 = indicators[-burnIn,-1]*Mudim1
numOn = apply(indicators[-burnIn,-1], 2, sum)
onMu.dim1.sum = apply( onMu.dim1, 2, sum)

meanMu.on.dim1 = onMu.dim1.sum/numOn


Mudim2 = Mu[-burnIn,seq(3,ncol(Mu), 2)]
onMu.dim2 = indicators[-burnIn,-1]*Mudim2
onMu.dim2.sum = apply( onMu.dim2, 2, sum)
meanMu.on.dim2 = onMu.dim2.sum/numOn


Edist = sqrt(onMu.dim1*onMu.dim1 + onMu.dim2*onMu.dim2)
Edist.sum = apply(Edist, 2, sum)
meanEdist = Edist.sum/numOn

proportionOnFrame = data.frame( index=paste( 0:(ncol(indicators)-2)) , proportionOn=signif(proportionOn,3),  meanEdist = signif(meanEdist,3), meanMu.on.dim1=signif(meanMu.on.dim1,3) , meanMu.on.dim2=signif(meanMu.on.dim2,3),   row.names=NULL) 
proportionOnFrame.sort = proportionOnFrame[ order(proportionOnFrame$proportionOn, decreasing=T), ]
print(proportionOnFrame.sort[1:100,], row.names=F)
write.table(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/muPlots/H1N1-meanDistanceGivenNodeOn_sorted.txt", proportionOnFrame.sort, row.names=F, quote=F, sep="\t")
write.table(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/muPlots/H1N1-meanDistanceGivenNodeOn.txt", proportionOnFrame, row.names=F, quote=F, sep="\t")


setEPS()
postscript(paste("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/muPlots/H1N1-meanMuDim12.eps", sep="") )
  plot(meanMu.on.dim1[proportionOn < 0.5], meanMu.on.dim2[proportionOn < 0.5], xlim=c(-2,7), ylim=c(-0.6,0.6),xlab="Antigenic Dimension 1" , ylab="Antigenic Dimension 2")
  points(meanMu.on.dim1[proportionOn >= 0.5], meanMu.on.dim2[proportionOn >= 0.5], col=4, pch =16)
  legend(4,0.5, legend=c(expression('p'[i]*' < 0.5'),expression('p'[i]*' >= 0.5')), pch=c(1,16), col=c(1,4))
  abline(v=0, lty=2)
  abline(h=0, lty=2)
dev.off()                 



setEPS()
postscript(paste("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/muPlots/H1N1-EDist_on.eps", sep="") )
plot(0, type = "n", xlim = c(-3,10), ylim = c(0, 2), xlab="Euclidean distance", ylab="Density")
for(d in 0:(length(proportionOn)-1) ){
#    Edist.node = Edist[, d+1]
#    onEdist = Edist.node[indicators[-burnIn,2+d]==1]
    Edist.node = sqrt(Mu[-burnIn, 2+d*2]*Mu[-burnIn, 2+d*2] + Mu[-burnIn, 3+d*2]*Mu[-burnIn, 3+d*2])
    onEdist = Edist.node[indicators[-burnIn,2+d]==1]
    if(proportionOn[1+d] <0.5){ 
      lines(density(onEdist), col=8)
    }
}
for(d in 0:(length(proportionOn)-1) ){
# Edist.node = Edist[, d+1]
 # onEdist = Edist.node[indicators[-burnIn,2+d]==1]
  Edist.node = sqrt(Mu[-burnIn, 2+d*2]*Mu[-burnIn, 2+d*2] + Mu[-burnIn, 3+d*2]*Mu[-burnIn, 3+d*2])
  onEdist = Edist.node[indicators[-burnIn,2+d]==1]
  if(proportionOn[1+d] >= 0.5){ 
    lines(density(onEdist), col=4, lwd=3)
  }
}
dev.off()


setEPS()
postscript(paste("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/muPlots/H1N1-dim1_on.eps", sep="") )
plot(0, type = "n", xlim = c(-10,10), ylim = c(0, 2), xlab="Antigenic dimension 1", ylab="Density")
for(d in 0:(length(proportionOn)-1) ){
  Mu.dim1 = Mu[-burnIn, 2+d*2]
  onMu.dim1 = Mu.dim1[indicators[-burnIn,2+d]==1]
  if(proportionOn[1+d] <0.5){ 
    lines(density(onMu.dim1), col=8)
  }
}
for(d in 0:(length(proportionOn)-1) ){
  Mu.dim1 = Mu[-burnIn, 2+d*2]
  onMu.dim1 = Mu.dim1[indicators[-burnIn,2+d]==1]
  if(proportionOn[1+d] >= 0.5){ 
    lines(density(onMu.dim1), col=4, lwd=3)
  }
}
dev.off()





nodeNum = matrix(NA, nrow=nrow(indicators) , ncol=ncol(indicators))
for(i in 2:ncol(nodeNum)){
  nodeNum[,i] = rep(i-2, times=nrow(indicators))
}


selectOn0_5 = which(proportionOn >= 0.5)

mu.Euclidean = sqrt(  Mu[,seq(2,ncol(Mu),2)]*Mu[,seq(2,ncol(Mu),2)] + Mu[,seq(3,ncol(Mu),2)]*Mu[,seq(3,ncol(Mu),2)])
mu.Euclidean.vector = unlist(mu.Euclidean[-burnIn, selectOn0_5])
nodeNum.vector = as.vector(nodeNum[-burnIn, selectOn0_5 + 1])
indicators.vector = unlist(indicators[-burnIn,  selectOn0_5 +1])

#only on the proportionOn > 0.5 
mu.Euclidean.vector.on = mu.Euclidean.vector[ indicators.vector==1]
nodeNum.vector.on = nodeNum.vector[ indicators.vector==1]


#png(paste("C:/Users/Charles/Google Drive/antigenic/GenoPheno/driver/clustering/analysis/coOccurence-serum0_8/boxplot-onMu_probOnGT0_5.png", sep=""), width=1500, height=700 )
setEPS()
postscript(paste("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/muPlots/H1N1-boxplot-onMu_probGTE0_5.eps", sep="") )
boxplot( mu.Euclidean.vector.on ~nodeNum.vector.on, xlab="node" , ylab="Euclidean distance")
dev.off()




###################################################################

#Skip: 
#plot individually
#for(d in 0:(length(proportionOn)-1) ){
#  #for(d in 0:300 ){
#  if(proportionOn[1+d] >= 0.5){
#    Mu.dim1 = Mu[-burnIn, 2+d*2]
#    onMu.dim1 = Mu.dim1[indicators[-burnIn,2+d]==1]
#    #save out
#  #    png(paste("C:/Users/Charles/Google Drive/antigenic/GenoPheno/driver/clustering/analysis/coOccurence-serum0_8/onGTE0_5/on", d , ".png", sep="") )
#      #plot(density(onMu.dim1), xlab="Antigenic Dimension 1", ylab="Density", main=parse(text=paste("mu[",d, "] | I[", d, "] = 1", sep="")))
#    plot(density(onMu.dim1), xlab="Antigenic Dimension 1", ylab="Density", main=paste("mu",d, "|I",d,"=1", sep=""))
##    dev.off()
#  }
#}

##############################################################################
#I couldn't get the subscript and superscript to work well
#expression(paste(plain(log)[2], " intensity")))
#plot(1:10,main=expression(paste("A"[2], " and B"[2] , " hi"))  )
#parse(text=paste("mu[",d, "]| I[", d, "]=1", sep=""))
#parse(text=paste(abs(seq(-100, -50, 10)), "^o ", "*W", sep=""))




#averaged the mu's first, then take the distance
Euclidean.dist = sqrt(meanMu.on.dim1^2 + meanMu.on.dim2^2)

hist(Euclidean.dist)
hist(Euclidean.dist[proportionOn > 0.2])
hist(Euclidean.dist[proportionOn > 0.5])
hist(Euclidean.dist[proportionOn >0.8])

mean(Euclidean.dist, na.rm=T)
mean(Euclidean.dist[proportionOn >0.2], na.rm=T)
mean(Euclidean.dist[proportionOn >0.5], na.rm=T)
mean(Euclidean.dist[proportionOn >0.8], na.rm=T)

sum(proportionOn > 0.2)
sum(proportionOn > 0.5)
sum(proportionOn > 0.8)



#want





































#SKIP THE REST OF THE OBOSOLETE CODE


#########################################################################################################

mean.mu.Euclidean = apply(mu.Euclidean[-burnIn,],2, mean)

Mu.dim1 = Mu[-burnIn, 2+d*2]
onMu.dim1 = Mu.dim1[indicators[-burnIn,2+d]==1]


mean.mu.Euclidean = NULL
for(i in 1:ncol(mu.Euclidean)){
  if(proportionOn[i] > 0.5){
    euclidean = mu.Euclidean[-burnIn,i]
    euclidean.on = euclidean[indicators[-burnIn,1+i]==1]
    mean.mu.Euclidean[i] = mean(euclidean.on)
    png(paste("C:/Users/Charles/Google Drive/antigenic/GenoPheno/driver/clustering/analysis/coOccurence-serum0_8/onGTE0_5/Euclidean", (i-1) , ".png", sep="") )
      plot(density(euclidean.on), xlab="Euclidean distance", ylab="Density", main=paste("mu", (i-1), "|I", (i-1),"=1", sep=""))
    dev.off()
  }
}


#take the Euclidean distance, then average.. I think this one is the more correct.
#mean jump size (Euclidean distance), given on at least 50% of the time
mean(mean.mu.Euclidean[proportionOn >= 0.5])
#[1] 3.306659  #with burn in
#[1] 3.296756  #without burn in


#sanity check
#mean(mu.Euclidean[which(indicators[,804]==1),803])
#boxplot(mu.Euclidean[which(indicators[,804]==1),803])


# multiple boxplots



#for overlaying histogram
http://www.cookbook-r.com/Graphs/Plotting_distributions_(ggplot2)/

#note:  should have some burn in


http://www.cookbook-r.com/Graphs/Plotting_distributions_(ggplot2)/
  
  

hist(onMu.dim1[,641 + 1], br=100)

###

onMu.dim1[, 779][indicators[,779+1] ==1]

####

for(run in 1:nrow(indicators)){
  
    if(run %% frequency == 1){
      onNodes = which(indicators[run,]==1) - 2
      cat(indicators[run,1],"\t", onNodes, "\n")
      #cat(indicators[run,1],"\t", as.numeric(partStatus[run,partStatus[run,]==1]),"\n")
      
      
      
      # onMu = sort(c(onNodes*2+2, onNodes*2 +3))
  
      #need to apply offset to Trevor's model because
      #the first mu is reserved for the root's initial state
      #and every other one is indexed by an offset of +1mu
      onMu.Offset1_1 = onNodes*2+ 4 #first dimension
      onMu.Offset1_2 = onNodes*2+ 5 #second dimension
      #print(   as.numeric( Mu[run,onMu.Offset1]) ) 
  
      
      print( data.frame(  node=onNodes,    dim1= as.numeric( Mu[run, onMu.Offset1_1]), dim2= as.numeric( Mu[run, onMu.Offset1_2])) )
      
    }
  
  }



#}







