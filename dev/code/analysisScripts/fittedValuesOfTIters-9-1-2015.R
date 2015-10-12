
#Schematic diagram:

plot(1:5)


#Titers


#H_{ij}

hi_data = read.table("/Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/data/H3N2_HI_data.tsv", header=T, string=F)

#unique virus
unique_virus = unique(hi_data$virusStrain)

#unique serum 
unique_serum = unique(hi_data$serumIsolate)

#s_j
s_j = double(length(unique_serum))
for(k in 1:length(unique_serum)){
 subset =  hi_data[ hi_data$serumIsolate ==unique_serum[k],]
 s_j[k] = max(as.numeric(subset$titer), na.rm=T)
}


#Compute \hat{H_{ij}}

virus_data = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1/H3N2_mds.drifted.VirusLocs.log", header = T, string=F, check.names=F)
serum_data = read.table("/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1/H3N2_mds.drifted.SerumLocs.log", header = T, string=F, check.names=F)


mean_virus_Pos = apply(virus_data, 2, mean)
mean_serum_Pos = apply(serum_data, 2, mean)

fitted_hi_data = double(nrow(hi_data))


for(k in 1:nrow(hi_data)){
  virusCol.1 = min(which(substr(colnames(virus_data),1,nchar(colnames(virus_data))-1) == hi_data$virusStrain[k]))
  serumCol.1 = min(which(substr(colnames(serum_data),1,nchar(colnames(serum_data))-1) == hi_data$serumIsolate[k]))
  fitted_hi_data[k] = log( s_j[which(unique_serum == hi_data$serumIsolate[k])], base=2) - mean( sqrt((virus_data[,virusCol.1] - serum_data[,serumCol.1])^2 + (virus_data[,virusCol.1+1] - serum_data[,serumCol.1+1])^2 ) )
}

log2Titer = log( as.numeric(hi_data$titer), base=2)

plot(log2Titer ~fitted_hi_data)
abline(0,1)
smoothedspline = smooth.spline(log2Titer[!is.na(residuals)], residuals[!is.na(residuals)])
lines(smoothedspline, col=3, lty=2) 



summary(lm(log2Titer~fitted_hi_data))


residuals = log2Titer - fitted_hi_data

pdf("/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/residualPlot/residualPlot.pdf", width=6, height=4)
plot(residuals[!is.na(residuals)] ~fitted_hi_data[!is.na(residuals)], xlab="Posterior Mean Predicted log2 titers", ylab="Residuals (Observed - Posterior Mean Predicted)", col="snow3")
smoothedspline = smooth.spline(fitted_hi_data[!is.na(residuals)], residuals[!is.na(residuals)])
lines(smoothedspline, col="orangered", lty=1, lwd=1) 
abline(0,0, col="royalblue4", lwd=1, lty=2)
dev.off()

plot(residuals[!is.na(residuals)] ~log2Titer[!is.na(residuals)], xlab="Observed log2 titers", ylab="Residuals (Observed - Predicted)", col="snow3")
smoothedspline = smooth.spline(log2Titer[!is.na(residuals)], residuals[!is.na(residuals)])
lines(smoothedspline, col="orangered", lty=1, lwd=1) 
abline(0,0, col="royalblue4", lwd=1, lty=2)



#index 273...# that outlier
hi_data[273,]

log2Titer[273]
fitted_hi_data[273]
#I won't worry that much because it predicts really really low.. 
#but the observed titer is actually only 40 anyway.
#predicting the left tail isn't that good..