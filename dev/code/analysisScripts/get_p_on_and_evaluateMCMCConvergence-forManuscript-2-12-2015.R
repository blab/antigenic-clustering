

#H3N2
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/H3N2_mds.indicatorsStat.log", header = T)
burnIn = 1:250
proportionOn = as.numeric( apply(indicators[-burnIn,-1], 2, mean)  )
write.table(proportionOn, col=F, row=F, file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2/tree/H3N2_C3b-mds0_05-p_on.txt")


#H1N1
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/H1N1_mds.indicatorsStat.log", header = T)
burnIn = 1:250
proportionOn = as.numeric( apply(indicators[-burnIn,-1], 2, mean)  )
write.table(proportionOn, col=F, row=F, file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/tree/H1N1_C3b-mds0_1-p_on.txt")



###################################################

sp <-function(fileName, xname = "p from replicate 1", yname="p from replicate 2"){
  #burnIn = 1:10
  burnIn = 1:250
  proportionOn = as.numeric( apply(indicators[-burnIn,-1], 2, mean)  )
  proportionOn2 = as.numeric( apply(indicators2[-burnIn,-1], 2, mean)  )
  
  print(nrow(indicators))
  if(!is.na(fileName)){
    setEPS()
    postscript(fileName, width=5, height=5)
  }
    plot(proportionOn2~proportionOn, xlab=xname, ylab=yname )
  #rSq= summary(lm(proportionOn2~proportionOn))$r.squared
  #plot(proportionOn2~proportionOn, xlab=expression('p'[i]*' from replicate 1'), ylab=expression('p'[i]*' from replicate 2'), main=paste("r^2=", rSq))
  
  
  if(!is.na(fileName)){
    dev.off()
  }
  summary(lm(proportionOn2~proportionOn))
  
}


#plot(1:10, xlab=expression('hi'[5]*'there'[6]^8*'you'[2]))
#plot(1:10, 1:10)
#title(main = bquote(.(number[1]) ~ "plot, units are in km" ~ m^-3))


##
####
#########

#H3N2, mds precision 0.05
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2-C3b-mds0_05-concordance.eps")
#Multiple R-squared:  0.9766,  Adjusted R-squared:  0.9766 

indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-rep3/H3N2_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2-C3b-mds0_05-rep1vs3-concordance.eps", "p from replicate 1", "p from replicate 3")
#Multiple R-squared:  0.9968,  Adjusted R-squared:  0.9968 


indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-rep4/H3N2_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2-C3b-mds0_05-rep1vs4-concordance.eps", "p from replicate 1", "p from replicate 4")
#Multiple R-squared:  0.9882,  Adjusted R-squared:  0.9882 


#H3N2, mds precision 0.1
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2-C3b-mds0_1-concordance.eps")
#Multiple R-squared:  0.9952,  Adjusted R-squared:  0.9952 


#H3N2, mds precision 0.15
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_15/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_15-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2-C3b-mds0_15-concordance.eps")
#Multiple R-squared:  0.9886,  Adjusted R-squared:  0.9886 




#H3N2, mds precision is estimated
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2-C3b-concordance.eps")
#Multiple R-squared:  0.7004,  Adjusted R-squared:    0.7 


## H3N2, mds precision 0.85
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_85/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_85-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2-C3b-mds0_85-concordance.eps")
#Multiple R-squared:  0.7132,  Adjusted R-squared:  0.7129 





indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-sample2/H3N2_mds.indicatorsStat.log", header = T)
indicators3 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-sample3/H3N2_mds.indicatorsStat.log", header = T)
indicators4 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-sample4/H3N2_mds.indicatorsStat.log", header = T)
indicators5 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-sample5/H3N2_mds.indicatorsStat.log", header = T)
indicators6 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05-sample6/H3N2_mds.indicatorsStat.log", header = T)

burnIn = 1:250
proportionOn = as.numeric( apply(indicators[-burnIn,-1], 2, mean)  )
proportionOn2 = as.numeric( apply(indicators2[-burnIn,-1], 2, mean)  )
proportionOn3 = as.numeric( apply(indicators3[-burnIn,-1], 2, mean)  )
proportionOn4 = as.numeric( apply(indicators4[-burnIn,-1], 2, mean)  )
proportionOn5 = as.numeric( apply(indicators5[-burnIn,-1], 2, mean)  )
proportionOn6 = as.numeric( apply(indicators6[-burnIn,-1], 2, mean)  )

pOn = data.frame(site=0:(ncol(indicators)-2), T.mcc=signif(proportionOn,3), T2=signif(proportionOn2,3), T3=signif(proportionOn3,3), T4=signif(proportionOn4,3), T5=signif(proportionOn5,3), T6=signif(proportionOn6,3))
write.table(pOn[order(pOn[,2], decreasing=T),][1:50,], sep="\t", quote=F, row=F) #sorted by T.mcc

write.table(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2/concordance/H3N2-C3b-mds0_05-treeMCC-S2-6.txt", pOn, sep="\t", quote=F, row=F)





##################################################################################################


#H1N1, mds precision 0.1
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1-rep2/H1N1_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1-concordance.eps")
#Multiple R-squared:  0.9991,  Adjusted R-squared:  0.9991 



#H1N1, mds precision 0.3
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_3/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_3-rep2/H1N1_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_3-concordance.eps")
#Multiple R-squared:  0.9982,  Adjusted R-squared:  0.9982 




#mds 0.1 vs 0.3
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_3/H1N1_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-mds0_1Vs0_3-concordance.eps")
#Multiple R-squared:  0.5562,  Adjusted R-squared:  0.5543 



#H1N1, mds precision is estimated
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-rep2/H1N1_mds.indicatorsStat.log", header = T)
sp("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-C3b-concordance.eps")
#Multiple R-squared:  0.9919,  Adjusted R-squared:  0.9918 




#NOTE: one has drift ~0 and the other at ~0.5... still drift or no drift
indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H1N1/C3-rep2/H1N1_mds.indicatorsStat.log", header = T)
sp(NA)
#Multiple R-squared:  0.949,  Adjusted R-squared:  0.9488 


#test the new version of the code also gives us the same things
#indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H1N1/C3b-mds0_1/H1N1_mds.indicatorsStat.log", header = T)
#indicators2 = read.table("/Users/charles/Documents/researchData/clustering/output/test26/run82-H1N1-testCodeForUpload/H1N1_mds.indicatorsStat.log", header = T)
#sp()




#Sample 2 vs Sample 3, not much concordance
indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan26/H1N1/C3b-mds0_1-sample2/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan26/H1N1/C3b-mds0_1-sample3/H1N1_mds.indicatorsStat.log", header = T)
sp(NA)


indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan26/H1N1/C3b-mds0_1-sample2/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan26/H1N1/C3b-mds0_1-sample2-rep2/H1N1_mds.indicatorsStat.log", header = T)
sp(NA)


indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan26/H1N1/C3b-mds0_1-sample3/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan26/H1N1/C3b-mds0_1-sample3-rep2/H1N1_mds.indicatorsStat.log", header = T)
sp(NA)



indicators = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/H1N1_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1-sample2/H1N1_mds.indicatorsStat.log", header = T)
indicators3 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1-sample3/H1N1_mds.indicatorsStat.log", header = T)
indicators4 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1-sample4/H1N1_mds.indicatorsStat.log", header = T)
indicators5 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1-sample5/H1N1_mds.indicatorsStat.log", header = T)
indicators6 = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1-sample6/H1N1_mds.indicatorsStat.log", header = T)

burnIn = 1:250
proportionOn = as.numeric( apply(indicators[-burnIn,-1], 2, mean)  )
proportionOn2 = as.numeric( apply(indicators2[-burnIn,-1], 2, mean)  )
proportionOn3 = as.numeric( apply(indicators3[-burnIn,-1], 2, mean)  )
proportionOn4 = as.numeric( apply(indicators4[-burnIn,-1], 2, mean)  )
proportionOn5 = as.numeric( apply(indicators5[-burnIn,-1], 2, mean)  )
proportionOn6 = as.numeric( apply(indicators6[-burnIn,-1], 2, mean)  )

pOn = data.frame(site=0:(ncol(indicators)-2), T.mcc=signif(proportionOn,3), T2=signif(proportionOn2,3), T3=signif(proportionOn3,3), T4=signif(proportionOn4,3), T5=signif(proportionOn5,3), T6=signif(proportionOn6,3))
write.table(pOn[order(pOn[,2], decreasing=T),][1:50,], sep="\t", quote=F, row=F) #sorted by T.mcc

write.table(file="/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/concordance/H1N1-C3b-mds0_1-treeMCC-S2-6.txt", pOn, sep="\t", quote=F, row=F)




#Sorted by rep 1
pOn = data.frame(site=0:(ncol(indicators)-2), rep1=signif(proportionOn,3), rep2=signif(proportionOn2,3))
write.table(pOn[order(pOn[,2], decreasing=T),][1:50,], sep="\t", quote=F, row=F) #use rep1

sum(proportionOn > 0.8)
sum(proportionOn > 0.5)
sum(proportionOn > 0.2)







#older:
indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3-mds0_05/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3-mds0_05-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp()

## try crossing ##
indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3-mds0_05/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3b-mds0_05-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp()


indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3-mds0_1/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3-mds0_1-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp()

#try crossing
indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3b-mds0_1/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3-mds0_1-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp()


indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3-mds0_15/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3-mds0_15-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp()

#try crossing
indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3-mds0_15/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3b-mds0_15-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp()


indicators = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3/H3N2_mds.indicatorsStat.log", header = T)
indicators2 = read.table("/Users/charles/Documents/researchData/clustering/tmpJan12/H3N2/new/C3-rep2/H3N2_mds.indicatorsStat.log", header = T)
sp()

