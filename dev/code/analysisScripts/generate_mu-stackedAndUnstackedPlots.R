
myColors=c('#a160ab',
'#3a6d9d',
'#b5d190',
'#b65025',
'#90c3bb',
'#b57d2e',
'#7b9cdd',
'#68955a',
'#ed9a6e',
'#382594',
'#9dcba9',
'#ac8c32',
'#ea836a',
'#548d75',
'#e7c477',
'#33329e',
'#cbd182')

######################################################################################################################

h3n2 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_1.JumpEuclideanBetweenSeeds.txt", header=F, string=F)
h3n2.colorScheme = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/colorScheme/H3N2_colors.tsv", sep="\t", string=F, header=T)
burnIn = 1:250

pdf(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/mu/mu-seed-Euclidean-mds0_1.pdf", width=8, height=6)
plot(0, type = "n", xlim = c(0,11), ylim = c(0, 2), xlab=expression(paste("Euclidean antigenic distance of ", mu)), ylab="density")
curIndex= 0
nodeNum = 0
for(d in 2:nrow(h3n2)){
  curIndex = curIndex + 1
  nodeNum[curIndex] = h3n2.colorScheme[d,2]
  Edist.node = h3n2[d, -1]
  onEdist = as.numeric(Edist.node[-burnIn])
  onEdist = onEdist[onEdist > 0] #conditional on it jumps.
  lines(density(onEdist), col=myColors[curIndex+1], lwd=1.5)
}
legend(x=9, y=1.9, legend=nodeNum, fill=myColors[-1], col=myColors[-1], title="Cluster")
dev.off()





df = data.frame(x=NULL, y=NULL, c=NULL    )

for(d in 2:nrow(h3n2)){ 
    Edist.node = h3n2[d, -1]
    onEdist = as.numeric(Edist.node[-burnIn])
    onEdist = onEdist[onEdist > 0] #conditional on it jumps.
    curDensity= approxfun(density(onEdist))
    xnew = seq(0,10,0.01)
    tmpDF = data.frame(x = xnew, y=curDensity(xnew), node = paste("",d-1,"", sep=""))
    df = rbind(df, tmpDF)
}

df$y[is.na(df$y)] = 0  


library(ggplot2)
require(gridExtra)

theColors = myColors[-1]
plot1 = ggplot(df, aes(x = x, y = y, fill =node))+ geom_area( position = 'stack') + 
  scale_fill_manual("Cluster", values=theColors, labels=nodeNum) +
  xlab(expression(paste("Euclidean antigenic distance of ", mu))) +
  ylab("density")+
  ggtitle("A/H3N2")+
  theme_bw() +
  theme(axis.line = element_line(colour = "black"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        panel.background = element_blank(),axis.text=element_text(size=18),
        axis.title=element_text(size=20),
        plot.title = element_text(size=30,  vjust=2),
        legend.position = c(0.9, 0.5) )


pdf(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/mu/mu-seed-stacked-h3n2-mds-0_1.pdf", width=6, height=6)
 grid.arrange(plot1,ncol=1)
dev.off()



h1n1 = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/consensus/H1N1-mds0_3.JumpEuclideanBetweenSeeds.txt", header=F, string=F)
h1n1.colorScheme = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/colorScheme/H1N1_colors.tsv", sep="\t", string=F, header=T)
burnIn = 1:250

pdf(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/mu/mu-seed-Euclidean-mds0_3.pdf", width=8, height=6)
plot(0, type = "n", xlim = c(0,11), ylim = c(0, 2), xlab=expression(paste("Euclidean antigenic distance of ", mu)), ylab="density")
curIndex= 0
nodeNum = 0
for(d in 2:nrow(h1n1)){
  curIndex = curIndex + 1
  nodeNum[curIndex] = h1n1.colorScheme[d,2]
  Edist.node = h1n1[d, -1]
  onEdist = as.numeric(Edist.node[-burnIn])
  onEdist = onEdist[onEdist > 0] #conditional on it jumps.
  lines(density(onEdist), col=myColors[curIndex+1], lwd=1.5)
}
legend(x=9, y=1.9, legend=nodeNum, fill=myColors[-1], col=myColors[-1], title="Cluster")
dev.off()


df = data.frame(x=NULL, y=NULL, c=NULL    )
for(d in 2:nrow(h1n1)){ 
  Edist.node = h1n1[d, -1]
  onEdist = as.numeric(Edist.node[-burnIn])
  onEdist = onEdist[onEdist > 0] #conditional on it jumps.
  curDensity= approxfun(density(onEdist))
  xnew = seq(0,10,0.01)
  tmpDF = data.frame(x = xnew, y=curDensity(xnew), node = paste("",d-1,"", sep=""))
  df = rbind(df, tmpDF)
}

df$y[is.na(df$y)] = 0  


theColors = myColors[-1]
plot2 = ggplot(df, aes(x = x, y = y, fill =node))+ geom_area( position = 'stack') + 
  scale_fill_manual("Cluster", values=theColors, labels=nodeNum) +
  xlab(expression(paste("Euclidean antigenic distance of ", mu))) +
  ylab("density")+
  ggtitle("A/H1N1")+
  theme_bw() +
  theme(axis.line = element_line(colour = "black"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        panel.background = element_blank(),axis.text=element_text(size=18),
        axis.title=element_text(size=20),
        plot.title = element_text(size=30,  vjust=2),
        legend.position = c(0.9, 0.5) )



pdf(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/mu/mu-seed-stacked-mds0_3-h1n1.pdf", width=6, height=6)
grid.arrange(plot2,ncol=1)
dev.off()



pdf(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/mu-seed-stacked-h3n2-0_1-h1n1-0_3.pdf", width=12, height=6)
grid.arrange(plot1, plot2, ncol=2)
dev.off()







#dir = "/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/"
dir = "/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1/"
indicators = read.table( paste(dir, "H3N2_mds.indicatorsStat.log", sep=""), header = T)
Mu = read.table( paste(dir, "H3N2_mds.muStat.log", sep=""), header=T)


##dir = "/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/"
#dir = "/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_3/"
#indicators = read.table( paste(dir, "H1N1_mds.indicatorsStat.log", sep=""), header = T)
#Mu = read.table( paste(dir, "H1N1_mds.muStat.log", sep=""), header=T)



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


#############################
pdf(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/mu/mu-Euclidean-mds0_1.pdf", width=8, height=6)
plot(0, type = "n", xlim = c(-2,10), ylim = c(0, 3.5), xlab=expression(paste("Euclidean antigenic distance of ", mu)), ylab="density")
for(d in 0:(length(proportionOn)-1) ){
  Edist.node = sqrt(Mu[-burnIn, 2+d*2]*Mu[-burnIn, 2+d*2] + Mu[-burnIn, 3+d*2]*Mu[-burnIn, 3+d*2])
  onEdist = Edist.node[indicators[-burnIn,2+d]==1]
  if(proportionOn[1+d] <0.5){ 
    lines(density(onEdist), col=8)
  }
}
curColor = 0
nodeNum = 0
for(d in 0:(length(proportionOn)-1) ){
  if(proportionOn[1+d] >= 0.5){ 
    curColor = curColor + 1
    nodeNum[curColor] = d
    Edist.node = sqrt(Mu[-burnIn, 2+d*2]*Mu[-burnIn, 2+d*2] + Mu[-burnIn, 3+d*2]*Mu[-burnIn, 3+d*2])
    onEdist = Edist.node[indicators[-burnIn,2+d]==1]
    lines(density(onEdist), col=myColors[curColor], lwd=1.5)
  }
}
legend(x=8, y=3.3, legend=nodeNum, fill=myColors, col=myColors, title="node")
dev.off()
###########################################################################


#df$c = rep(LETTERS[1:12], each = 21)



#ggplot(df, aes(x = x, y = y, fill = c)) + geom_area(position = 'stack') 
#ggplot(df, aes(x = x, y = y, fill = nodeNum)) + geom_area(aes(fill=nodeNum), position = 'stack')



#perhaps I want to get rid of the repeating colors.

#2 plots:

#plot1 <- qplot(1)
#plot2 <- qplot(1)
#grid.arrange(plot1, plot2, ncol=2)


#dir2 = "/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/"
dir2 = "/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_3/"
indicators2 = read.table( paste(dir2, "H1N1_mds.indicatorsStat.log", sep=""), header = T)
Mu2 = read.table( paste(dir2, "H1N1_mds.muStat.log", sep=""), header=T)



proportionOn2 = as.numeric( apply(indicators2[-burnIn,-1], 2, mean)  )

Mudim1.h1n1 = Mu2[-burnIn,seq(2,ncol(Mu2),2)]

onMu.dim1.h1n1 = indicators2[-burnIn,-1]*Mudim1.h1n1
numOn.h1n1 = apply(indicators2[-burnIn,-1], 2, sum)
onMu.dim1.sum.h1n1 = apply( onMu.dim1.h1n1, 2, sum)

meanMu.on.dim1.h1n1 = onMu.dim1.sum.h1n1/numOn.h1n1


Mudim2.h1n1 = Mu2[-burnIn,seq(3,ncol(Mu2), 2)]
onMu.dim2.h1n1 = indicators2[-burnIn,-1]*Mudim2.h1n1
onMu.dim2.sum.h1n1 = apply( onMu.dim2.h1n1, 2, sum)
meanMu.on.dim2.h1n1 = onMu.dim2.sum.h1n1/numOn.h1n1


Edist.h1n1 = sqrt(onMu.dim1.h1n1*onMu.dim1.h1n1 + onMu.dim2.h1n1*onMu.dim2.h1n1)
Edist.sum.h1n1 = apply(Edist.h1n1, 2, sum)
meanEdist.h1n1 = Edist.sum.h1n1/numOn.h1n1

####################################################################
pdf(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/mu/mu-Euclidean-mds0_3.pdf", width=8, height=6)
plot(0, type = "n", xlim = c(-2,10), ylim = c(0, 3.5), xlab=expression(paste("Euclidean antigenic distance of ", mu)), ylab="density")
for(d in 0:(length(proportionOn2)-1) ){
  Edist.node.h1n1 = sqrt(Mu2[-burnIn, 2+d*2]*Mu2[-burnIn, 2+d*2] + Mu2[-burnIn, 3+d*2]*Mu2[-burnIn, 3+d*2])
  onEdist.h1n1 = Edist.node.h1n1[indicators2[-burnIn,2+d]==1]
  if(proportionOn2[1+d] <0.5){ 
    lines(density(onEdist.h1n1), col=8)
  }
}
curColor = 0
nodeNum = 0
for(d in 0:(length(proportionOn2)-1) ){
  if(proportionOn2[1+d] >= 0.5){ 
    curColor = curColor + 1
    nodeNum[curColor] = d
    Edist.node.h1n1 = sqrt(Mu2[-burnIn, 2+d*2]*Mu2[-burnIn, 2+d*2] + Mu2[-burnIn, 3+d*2]*Mu2[-burnIn, 3+d*2])
    onEdist.h1n1 = Edist.node.h1n1[indicators2[-burnIn,2+d]==1]
    lines(density(onEdist.h1n1), col=myColors[curColor], lwd=1.5)
  }
}
legend(x=8, y=3.4, legend=nodeNum, fill=myColors, col=myColors, title="node")
dev.off()
###################################################

df.h1n1 = data.frame(x=NULL, y=NULL, c=NULL    )

for(d in 0:(length(proportionOn2)-1) ){
  if(proportionOn2[1+d] >= 0.5){ 
    Edist.node.h1n1 = sqrt(Mu2[-burnIn, 2+d*2]*Mu2[-burnIn, 2+d*2] + Mu2[-burnIn, 3+d*2]*Mu2[-burnIn, 3+d*2])
    onEdist.h1n1 = Edist.node.h1n1[indicators2[-burnIn,2+d]==1]
    #lines(density(onEdist), col=4, lwd=3)
    #add density to the dataframe
    curDensity= approxfun(density(onEdist.h1n1))
    xnew = seq(0,10,0.01)
    tmpDF = data.frame(x = xnew, y=curDensity(xnew), node = paste("",d,"", sep=""))
    df.h1n1 = rbind(df.h1n1, tmpDF)
  }
}

df.h1n1$y[is.na(df.h1n1$y)] = 0  



plot2 = ggplot(df.h1n1, aes(x = x, y = y, fill = node))+ geom_area( position = 'stack') + scale_fill_manual(values=myColors) +
  xlab(expression(paste("Euclidean antigenic distance of ", mu))) +
  ylab("density")+
  ggtitle("A/H1N1")+
  theme_bw() +
  theme(axis.line = element_line(colour = "black"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        panel.background = element_blank(),axis.text=element_text(size=18),
        axis.title=element_text(size=20),
        plot.title = element_text(size=30,  vjust=2),
        legend.position = c(0.9, 0.5) )

##############################
#Ends here