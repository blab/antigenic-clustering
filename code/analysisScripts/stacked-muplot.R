


dir = "/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/"
indicators = read.table( paste(dir, "H3N2_mds.indicatorsStat.log", sep=""), header = T)
Mu = read.table( paste(dir, "H3N2_mds.muStat.log", sep=""), header=T)


#dir = "/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/"
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
plot(0, type = "n", xlim = c(-2,10), ylim = c(0, 3), xlab="Euclidean distance", ylab="Density")
for(d in 0:(length(proportionOn)-1) ){
  Edist.node = sqrt(Mu[-burnIn, 2+d*2]*Mu[-burnIn, 2+d*2] + Mu[-burnIn, 3+d*2]*Mu[-burnIn, 3+d*2])
  onEdist = Edist.node[indicators[-burnIn,2+d]==1]
  if(proportionOn[1+d] <0.5){ 
    lines(density(onEdist), col=8)
  }
}
for(d in 0:(length(proportionOn)-1) ){
  if(proportionOn[1+d] >= 0.5){ 
    Edist.node = sqrt(Mu[-burnIn, 2+d*2]*Mu[-burnIn, 2+d*2] + Mu[-burnIn, 3+d*2]*Mu[-burnIn, 3+d*2])
    onEdist = Edist.node[indicators[-burnIn,2+d]==1]
    lines(density(onEdist), col=4, lwd=3)
  }
}

###########################################################################


df = data.frame(x=NULL, y=NULL, c=NULL    )

for(d in 0:(length(proportionOn)-1) ){
  if(proportionOn[1+d] >= 0.5){ 
    Edist.node = sqrt(Mu[-burnIn, 2+d*2]*Mu[-burnIn, 2+d*2] + Mu[-burnIn, 3+d*2]*Mu[-burnIn, 3+d*2])
    onEdist = Edist.node[indicators[-burnIn,2+d]==1]
    #lines(density(onEdist), col=4, lwd=3)
    #add density to the dataframe
    curDensity= approxfun(density(onEdist))
    xnew = seq(0,10,0.01)
    tmpDF = data.frame(x = xnew, y=curDensity(xnew), node = paste("",d,"", sep=""))
    df = rbind(df, tmpDF)
  }
}

df$y[is.na(df$y)] = 0  

#df$c = rep(LETTERS[1:12], each = 21)
  

library(ggplot2)
#ggplot(df, aes(x = x, y = y, fill = c)) + geom_area(position = 'stack') 
#ggplot(df, aes(x = x, y = y, fill = nodeNum)) + geom_area(aes(fill=nodeNum), position = 'stack')


myColors = c("#9953A5", "#7FB2CA","#3B738C", "#D8CB74","#3B007D", "#EEA269", "#8FC4AD", "#B15822","#366795", "#AB7E29", "#5C8E59", "#E1595C")


#2 plots:
require(gridExtra)
#plot1 <- qplot(1)
#plot2 <- qplot(1)
#grid.arrange(plot1, plot2, ncol=2)


plot1 = ggplot(df, aes(x = x, y = y, fill = node))+ geom_area( position = 'stack') + scale_fill_manual(values=myColors) +
  xlab(expression(paste("Euclidean antigenic distance of ", mu))) +
  ylab("density")+
  ggtitle("A/H3N2")+
  theme_bw() +
  theme(axis.line = element_line(colour = "black"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        panel.background = element_blank(),axis.text=element_text(size=18),
        axis.title=element_text(size=20,face="bold"),
        plot.title = element_text(size=30, face="bold", vjust=2),
        legend.position = "bottom" )


dir2 = "/Users/charles/Documents/researchData/clustering/forManuscript/H1N1/C3b-mds0_1/"
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
        axis.title=element_text(size=20,face="bold"),
        plot.title = element_text(size=30, face="bold", vjust=2),
        legend.position = "bottom" )

grid.arrange(plot1, plot2, ncol=2)


##############################

# Two variables
df <- read.table(header=TRUE, text='
                 cond yval
                 A 2
                 B 2.5
                 C 1.6
                 ')

# Three variables
df2 <- read.table(header=TRUE, text='
                  cond1 cond2 yval
                  A      I 2
                  A      J 2.5
                  A      K 1.6
                  B      I 2.2
                  B      J 2.4
                  B      K 1.2
                  C      I 1.7
                  C      J 2.3
                  C      K 1.9
                  ')

# Bars: x and fill both depend on cond2
ggplot(df, aes(x=cond, y=yval, fill=cond)) + geom_bar(stat="identity")

# Bars with other dataset; fill depends on cond2
ggplot(df2, aes(x=cond1, y=yval)) + 
  geom_bar(aes(fill=cond2),   # fill depends on cond2
           stat="identity",
           colour="black",    # Black outline for all
           position=position_dodge()) # Put bars side-by-side instead of stacked

# Lines and points; colour depends on cond2
ggplot(df2, aes(x=cond1, y=yval)) + 
  geom_line(aes(colour=cond2, group=cond2)) + # colour, group both depend on cond2
  geom_point(aes(colour=cond2),               # colour depends on cond2
             size=3)                          # larger points, different shape
## Equivalent to above; but move "colour=cond2" into the global aes() mapping
# ggplot(df2, aes(x=cond1, y=yval, colour=cond2)) + 
#    geom_line(aes(group=cond2)) +
#    geom_point(size=3)





df <- data.frame(gp = factor(rep(letters[1:3], each = 10)),
                 y = rnorm(30))
# Compute sample mean and standard deviation in each group
library(plyr)
ds <- ddply(df, .(gp), summarise, mean = mean(y), sd = sd(y))

# Declare the data frame and common aesthetics.
# The summary data frame ds is used to plot
# larger red points in a second geom_point() layer.
# If the data = argument is not specified, it uses the
# declared data frame from ggplot(); ditto for the aesthetics.
ggplot(df, aes(x = gp, y = y)) +
  geom_point() +
  geom_point(data = ds, aes(y = mean),
             colour = 'red', size = 3)
# Same plot as above, declaring only the data frame in ggplot().
# Note how the x and y aesthetics must now be declared in
# each geom_point() layer.
ggplot(df) +
  geom_point(aes(x = gp, y = y)) +
  geom_point(data = ds, aes(x = gp, y = mean),
             colour = 'red', size = 3)
# Set up a skeleton ggplot object and add layers:
ggplot() +
  geom_point(data = df, aes(x = gp, y = y)) +
  geom_point(data = ds, aes(x = gp, y = mean),
             colour = 'red', size = 3) +
  geom_errorbar(data = ds, aes(x = gp, y = mean,
                               ymin = mean - sd, ymax = mean + sd),
                colour = 'red', width = 0.4)
