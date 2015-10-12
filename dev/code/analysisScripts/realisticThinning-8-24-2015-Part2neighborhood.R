
set.seed(378297)

#load and process data
for(run in 1:10){
  
  sim_HI_fileName = paste("/Users/charles/Documents/researchData/clustering/simulations/rep" , run, "/H3N2_sim_HIdata_withDrift.txt", sep="")
  
  sim_HI = read.table(sim_HI_fileName, sep="\t", header=T, string=F)
  
  virusCluster = as.integer(substr(sim_HI$virusIsolate,2,3))
  
  
  splitStr = strsplit(sim_HI$serumIsolate, split="s" ) 
  
  serumNum = integer(nrow(sim_HI))
  serumCluster = integer(nrow(sim_HI))
  for(i in 1:nrow(sim_HI)){
    serumCluster[i] = splitStr[[i]][1]
    serumNum[i] = splitStr[[i]][2]
  }
  
  serumCluster = as.integer(substr(serumCluster, 2,3))
  serumNum = as.integer(serumNum)
  
  distCluster_filename = paste("/Users/charles/Documents/researchData/clustering/simulations/rep", run,"/H3N2_sim_distCluster.txt", sep="")
  distCluster = read.table(distCluster_filename,sep=' ')
  
  virusSerumDist = integer(nrow(sim_HI))
  for(i in 1:nrow(sim_HI)){
    virusSerumDist[i] = distCluster[virusCluster[i]+1, serumCluster[i]+1]
  }
  

  #initially:
  #n=30, +/- 1,2,5, 5 sera, 5 replicates
  # 1 x 3 x 1 x 5 = 15 cores
  
  #what I can vary
  #sample size: 20, 30, 40
  #virus serum dist: 1,2,3,4,5
  #number of sera: 5 vs. 10
    #3 x 5 x2 = 30
    #10 replicates = 300

  sampleSizeList = c(20, 30,40)
  numSeraList = c(5,10)
  neighborhoodSizeList = c(1,2,3,4,5)
  
  for(sampleSize in sampleSizeList){
    for(numSera in numSeraList){
      for(neighborhoodSize in neighborhoodSizeList){
  
        selection = NULL
        for(c in 0:15){
          for(s in 1:numSera){
            curPopulation = which(serumCluster==c & serumNum ==s & virusSerumDist <= neighborhoodSize)
            #print(min(curPopulation, sampleSize))
            if(length(curPopulation) <= sampleSize){
              selection = c(selection, curPopulation) #take the whole population
            }else{
              selection = c(selection, sample(curPopulation, size=sampleSize)) #take a sample
            }
          }
        }
        selection = sort(selection)
        
        #write file
        curDataset = paste("/Users/charles/Documents/researchData/clustering/simulations/rep" , run,"/thinning/n",sampleSize,"_nSera",numSera,"_nbh",neighborhoodSize,".txt", sep="")
        write.table(sim_HI[selection,], file=curDataset, sep="\t", quote=F, row=F,col=T)
      }
    }
  }
  

        
} #rep





################################








