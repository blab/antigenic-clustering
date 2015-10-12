
x= read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/data/H3N2_HI_data.tsv", header=T, check=F, string=F)
unique(x$serumIsolate)[1]
x[x$serumIsolate == unique(x$serumIsolate)[1],]

serumYear = integer(519)
numVirusesPerSerum = integer(519)
numYearSpanPerSerum = integer(519)
for(i in 1:519){
  subData = x[x$serumIsolate == unique(x$serumIsolate)[i],]
  serumYear[i] = subData[1,]$serumYear
  numVirusesPerSerum[i] = nrow(subData )
  numYearSpanPerSerum[i] = length(unique(subData$virusYear))
}


hist(numYearSpanPerSerum)
sorted.numYearSpan = sort(numYearSpanPerSerum, decreasing = T)
sorted.numYearSpan
#break into 2 groups:
mean(sorted.numYearSpan[1:32])  # 2 highly informative sera   #20.0625 years
mean(sorted.numYearSpan[33:80]) # 3 informative             #11.91667 years
mean(sorted.numYearSpan[81:160]) #5 less informative        #4.575 years


order.numYearSpanPerSerum = order(numYearSpanPerSerum, decreasing=T)

mean(numVirusesPerSerum[order.numYearSpanPerSerum[1:32]])   #68.8125   - #so, sample 70 ranodmly  from within +/- 4
mean(numVirusesPerSerum[order.numYearSpanPerSerum[33:80]])  #28.875     -#so, sample 30 randomly  from within +/- 2
mean(numVirusesPerSerum[order.numYearSpanPerSerum[81:160]])  #30.75    -#so, sample 30  randomly  from within +/- 1

#15 clusters in 43 years
#43/16 = 2.6875
#2.5 yr / phenotype

#2 sera:
#20 / 2.5 = 8 cluster transitions +/- = 4

#3 sera:
#11.91667/2.5 = 4.76  ~5 cluster transitions  +/- = 2.5

#5 sera:
# 1.83  ~2 cluster transitions  +/- 1

summarySerum = data.frame(serumIsolate= unique(x$serumIsolate), serumYear, numVirusesPerSerum, numYearSpanPerSerum)

hist(summarySerum[ summarySerum$serumYear==1994,]$numYearSpanPerSerum, br=100, xlim=c(0,40))

hist(summarySerum[ summarySerum$serumYear==2005,]$numYearSpanPerSerum)


length(unique(x$virusStrain))
length(unique(x$serumIsolate))

length(unique(x$virusStrain)) *length(unique(x$serumIsolate))
nrow(x)

nrow(x)/ (length(unique(x$virusStrain)) *length(unique(x$serumIsolate)))   #around 4.8% of the data
  #but the thing is, there are still sera that are very informative..


summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][1:100,]
sum(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][1:100,]$numVirusesPerSerum)

sum(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][1:100,]$numVirusesPerSerum)/ (100*402) 
#13%

sum(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][1:50,]$numVirusesPerSerum)/ (50*402) 
#19%

sum(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][101:519,]$numVirusesPerSerum)/ ( (519-101+1)*402) 
mean(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][101:519,]$numYearSpanPerSerum)


sum(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][1:100,]$numVirusesPerSerum)/ ( (100)*402)  #0.134
mean(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][1:100,]$numYearSpanPerSerum)  #10.69 (across 5+1 clusters)
mean(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][1:50,]$numYearSpanPerSerum)    #13.54 years
mean(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][1:20,]$numYearSpanPerSerum)    #14.65 (across 7+1 clusters)



sum(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][101:201,]$numVirusesPerSerum)/ ( (201-101+1)*402)   #0.045
mean(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][101:201,]$numYearSpanPerSerum)   #5.10




###########################################################


x= read.table("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/data/H1N1_HI_data.tsv", header=T, check=F, string=F)
unique(x$serumIsolate)[1]
x[x$serumIsolate == unique(x$serumIsolate)[1],]

serumYear = integer(77)
numVirusesPerSerum = integer(77)
numYearSpanPerSerum = integer(77)
for(i in 1:77){
  subData = x[x$serumIsolate == unique(x$serumIsolate)[i],]
  serumYear[i] = subData[1,]$serumYear
  numVirusesPerSerum[i] = nrow(subData )
  numYearSpanPerSerum[i] = length(unique(subData$virusYear))
}


summarySerum = data.frame(serumIsolate= unique(x$serumIsolate), serumYear, numVirusesPerSerum, numYearSpanPerSerum)

hist(summarySerum[ summarySerum$serumYear==1994,]$numYearSpanPerSerum, br=100, xlim=c(0,40))

mean(summarySerum$numYearSpanPerSerum)
max(summarySerum$numYearSpanPerSerum)
hist(summarySerum$numYearSpanPerSerum)






length(unique(x$virusStrain))
length(unique(x$serumIsolate))

length(unique(x$virusStrain)) *length(unique(x$serumIsolate))
nrow(x)

nrow(x)/ (length(unique(x$virusStrain)) *length(unique(x$serumIsolate)))   #around 20% of the data
 #21.25%
sum(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][1:30,]$numVirusesPerSerum)/ (30*115) 
  #40.6%

sum(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][31:77,]$numVirusesPerSerum)/ ( (77-31+1)*115) 
 #8.9%

mean(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][31:77,]$numYearSpanPerSerum)
  #3.85



mean(summarySerum[order(summarySerum$numVirusesPerSerum, decreasing=T),][1:30,]$numYearSpanPerSerum) #6.36

