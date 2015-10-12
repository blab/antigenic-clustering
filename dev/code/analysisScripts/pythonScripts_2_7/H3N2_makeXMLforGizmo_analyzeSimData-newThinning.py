__author__ = 'charles'


#based on the template, modify the XML to analyze the simulated data


#what changes
# the filename of the HI data

java -jar /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/software/beast_v0_46-simulateViruses.jar /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/H3N2-v0_46-analyzeSimData-template.xml
java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/H3N2-v0_46-analyzeSimData-template-gizmo.xml


#MCMC runs 50M.. prints every 0.5M



import os
import re

#stage 1, 2,3
stageNum = [1,2,3]
for c in stageNum:
    for run in range(1,11,1):
        #outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_stage" + str(c) +"_rep" + str(run) + ".xml"
        outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_stage" + str(c) +"-kappa0_3_rep" + str(run) + ".xml"
        fw = open(outputXMLFilename, 'w')
        thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/thinning/stage" + str(c)+".txt"
        #f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo-100M.xml', 'r')
        f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo-100M-kappa0_3.xml', 'r')
        for line in f:
            result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
            if(len(result)>0):
                #print line
                line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"
            fw.write(line)
        fw.close()



#sample size: 20, 30, 40
#virus serum dist: 1,2,3,4,5
#number of sera: 5 vs. 10
#10 replicates  - run


#sampleSize
sampleSizeList = [20, 30,40]
numSeraList = [5,10]
neighborhoodSizeList = [1,2,3,4,5]

for n in sampleSizeList:
 for s in numSeraList:
  for nbh in neighborhoodSizeList:
    for run in range(1,11,1):
        #outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_n" + str(n) +"_nSera" + str(s) +"_nbh" + str(nbh) +"_rep" + str(run) + ".xml"
        outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_n" + str(n) +"_nSera" + str(s) +"_nbh" + str(nbh) +"-kappa0_3_rep" + str(run) + ".xml"
        fw = open(outputXMLFilename, 'w')
        thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/thinning/n" + str(n) +"_nSera" + str(s) +"_nbh" + str(nbh) + ".txt"
        #f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo-100M.xml', 'r')
        f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo-100M-kappa0_3.xml', 'r')
        for line in f:
            result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
            if(len(result)>0):
                #print line
                line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"
            fw.write(line)
        fw.close()

