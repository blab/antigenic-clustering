
set.seed(78297801)

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




#set up runs:
 #initially 5 x 3 = 15 cores
 #10 replicates x (2, 5, 10) = 30 cores

 #for each serum cluster, for each serum number, select on the distance
 #and then take a prespecified number of samples

selection = NULL
for(c in 0:15){
  sampleSize = 70
  serumRange = c(1,2)
  for(s in serumRange){
    curPopulation = which(serumCluster==c & serumNum ==s & virusSerumDist <= 4)
    if(length(curPopulation) <= sampleSize){
      selection = c(selection, curPopulation)
      #take the whole population
    }else{
      selection = c(selection, sample(curPopulation, size=sampleSize))
    }
  }
}

selectionStage1 = selection
selectionStage1 = sort(selectionStage1)

for(c in 0:15){
  sampleSize = 30
  serumRange = c(3,4,5)
  for(s in serumRange){
    curPopulation = which(serumCluster==c & serumNum ==s  & virusSerumDist <=2)
    if(length(curPopulation) <= sampleSize){
      selection = c(selection, curPopulation)
      #take the whole population
    }else{
      selection = c(selection, sample(curPopulation, size=sampleSize))
    }
  }
}
selectionStage2 = selection
selectionStage2 = sort(selectionStage2)

for(c in 0:15){
  sampleSize = 30
  serumRange = c(6,7,8,9,10)
  for(s in serumRange){
    curPopulation = which(serumCluster==c & serumNum ==s  & virusSerumDist <=1 )
    if(length(curPopulation) <= sampleSize){
      selection = c(selection, curPopulation)
      #take the whole population
    }else{
      selection = c(selection, sample(curPopulation, size=sampleSize))
    }
  }
}
selectionStage3 = selection
selectionStage3 = sort(selectionStage3)


#write file
thinned_sim_HI_stage1 = paste("/Users/charles/Documents/researchData/clustering/simulations/rep" , run,"/thinning/stage1.txt", sep="")
thinned_sim_HI_stage2 = paste("/Users/charles/Documents/researchData/clustering/simulations/rep" , run,"/thinning/stage2.txt", sep="")
thinned_sim_HI_stage3 = paste("/Users/charles/Documents/researchData/clustering/simulations/rep" , run,"/thinning/stage3.txt", sep="")


write.table(sim_HI[selectionStage1,], file=thinned_sim_HI_stage1, sep="\t", quote=F, row=F,col=T)
write.table(sim_HI[selectionStage2,], file=thinned_sim_HI_stage2, sep="\t", quote=F, row=F,col=T)
write.table(sim_HI[selectionStage3,], file=thinned_sim_HI_stage3, sep="\t", quote=F, row=F,col=T)


}




