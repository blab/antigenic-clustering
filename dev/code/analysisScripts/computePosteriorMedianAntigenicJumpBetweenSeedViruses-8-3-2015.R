
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

from = 
  c(NA,
    'A/HongKong/1/1968',   
    'A/England/42/1972',
    'A/Victoria/3/1975',
    'A/Bangkok/1/1979',
    'A/Mississippi/1/1985',
    'A/Sichuan/2/1987',
    'A/Sichuan/2/1987',
    'A/Beijing/32/1992',
    'A/Shandong/9/1993',
    'A/Johannesburg/33/1994',
    'A/Wuhan/359/1995',
    'A/Sydney/5/1997',
    'A/Fujian/411/2002',
    'A/California/7/2004',
    'A/Wisconsin/67/2005',
    'A/Brisbane/10/2007')


cbind(groupNames, from)

#h3n2 kappa = 0.1
virusLocFile = "/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1/H3N2_mds.drifted.VirusLocs.log"
outFile = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_1.JumpEuclideanBetweenSeeds.txt"

#h3n2 kappa = 0.05
virusLocFile = "/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/H3N2_mds.drifted.VirusLocs.log"
outFile = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_05.JumpEuclideanBetweenSeeds.txt"


#h3n2 kappa = 0.15
virusLocFile = "/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_15/H3N2_mds.drifted.VirusLocs.log"
outFile = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_15.JumpEuclideanBetweenSeeds.txt"



###############################################
#h1n1:
groupNames = c("A/USSR/90/1977",
               "A/Chile/1/1983",
               "A/Singapore/6/1986",
               "A/Beijing/262/1995",
               "A/NewCaledonia/20/1999",
               "A/SolomonIslands/3/2006",
               "A/Brisbane/59/2007",
               "A/Paraguay/61/2009",
               "A/HongKong/34079/2009")


from = 
  c(NA,
    "A/USSR/90/1977",
    "A/Chile/1/1983",
    "A/Singapore/6/1986",
    "A/Beijing/262/1995",
    "A/NewCaledonia/20/1999",
    "A/NewCaledonia/20/1999",
    "A/Brisbane/59/2007",
    "A/Paraguay/61/2009")


cbind(groupNames, from)

#h1n1 kappa = 0.3
virusLocFile = "/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_3/H1N1_mds.drifted.VirusLocs.log"
outFile = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/consensus/H1N1-mds0_3.JumpEuclideanBetweenSeeds.txt"

#h1n1 kappa = 0.1
virusLocFile = "/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/H1N1_mds.drifted.VirusLocs.log"
outFile = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/consensus/H1N1-mds0_1.JumpEuclideanBetweenSeeds.txt"

#########################################################################################


virusLoc = read.table(virusLocFile, check.names=FALSE, string=F, header=T)
virusCol = colnames(virusLoc)

#burnIns = 1:250
#do not delete burnIns yet




#output file:
diffAG1 = matrix(NA, nrow=length(groupNames), ncol=(nrow(virusLoc) ))
diffAG2 = matrix(NA, nrow=length(groupNames), ncol=(nrow(virusLoc) ))

#for dimension 1 and 2
for(curGroup in 2:length(groupNames)){
  #dimension 1
  curSearch = paste(groupNames[curGroup] , "1", sep="")
  colIndex = which( virusCol == curSearch )
  curSearch2 = paste(from[curGroup] , "1", sep="")
  colIndex2 = which( virusCol == curSearch2 )
  diffAG1[curGroup, ] = (virusLoc[,colIndex] - virusLoc[,colIndex2])
  
  #dimension 2
  curSearch = paste(groupNames[curGroup] , "2", sep="")
  colIndex = which( virusCol == curSearch )
  curSearch2 = paste(from[curGroup] , "2", sep="")
  colIndex2 = which( virusCol == curSearch2 )
  diffAG2[curGroup, ] = (virusLoc[,colIndex]- virusLoc[,colIndex2])
  
}

Euclidean = sqrt(diffAG1^2 + diffAG2^2)

diffAG1.df = data.frame(groupNames, diffAG1)
diffAG2.df = data.frame(groupNames, diffAG2)
diffEuclidean.df = data.frame(groupNames, Euclidean)

#write out:
write.table(diffEuclidean.df, file=outFile, col=F, row=F , quote=F)


#next, analyze using stacked and unstacked plot of mu
#while labeling the difference
