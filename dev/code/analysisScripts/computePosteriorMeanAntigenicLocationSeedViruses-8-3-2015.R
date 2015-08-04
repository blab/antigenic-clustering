
#h3n2 kappa = 0.1
virusLocFile = "/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1/H3N2_mds.drifted.VirusLocs.log"
outFile = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_1.postMeanSeedVirusLocation.txt"


#h3n2 kappa = 0.05
#virusLocFile = "/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/H3N2_mds.drifted.VirusLocs.log"
#outFile = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_05.postMeanSeedVirusLocation.txt"


#h3n2 kappa = 0.15
#virusLocFile = "/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_15/H3N2_mds.drifted.VirusLocs.log"
#outFile = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_15.postMeanSeedVirusLocation.txt"


virusLoc = read.table(virusLocFile, check.names=FALSE, string=F, header=T)
virusCol = colnames(virusLoc)

burnIns = 250

#for h3n2
groupNames = c('A/HongKong/1/1968',
              'A/England/42/1972',
              'A/Victoria/3/1975',
              'A/Bangkok/1/1979',
              'A/Mississippi/1/1985',
              'A/Sichuan/2/1987',
              'A/Beijing/353/1989',
              'A/Beijing/32/1992',
              'A/Shandong/9/1993',
              'A/Johannesburg/33/1994',
              'A/Wuhan/359/1995',
              'A/Sydney/5/1997',
              'A/Fujian/411/2002',
              'A/California/7/2004',
              'A/Wisconsin/67/2005',
              'A/Brisbane/10/2007',
              'A/Perth/16/2009')

#output file:
meanAG = matrix(NA, nrow=length(groupNames), ncol=2)

#for dimension 1 and 2
for(curGroup in 1:length(groupNames)){
  #dimension 1
  curSearch = paste(groupNames[curGroup] , "1", sep="")
  colIndex = which( virusCol == curSearch )
  meanAG[curGroup, 1] = mean(virusLoc[,colIndex])
  
  #dimension 2
  curSearch = paste(groupNames[curGroup] , "2", sep="")
  colIndex = which( virusCol == curSearch )
  meanAG[curGroup, 2] = mean(virusLoc[,colIndex])
  
}

colnames(meanAG) = c("mean1", "mean2")
meanAG.df = data.frame(groupNames, meanAG)


meanAG.df

write.table(meanAG.df, file=outFile, col=T, row=F, quote=F)




plot(meanAG.df$mean1, meanAG.df$mean2, pch=c("A","B","C","D","E", "F", "G", "H","I", "J", "K", "L","M","N","O","P","Q"))
