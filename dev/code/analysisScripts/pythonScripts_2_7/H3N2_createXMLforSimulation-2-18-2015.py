
__author__ = 'charles'


import os
import re
baseDir =  "/Users/charles/Documents/researchData/clustering/simulations/"

for i in range(1,11,1):
    directory = baseDir + "rep" + str(i) + "/"

    outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/simulation/H3N2-sim_v0_46_rep" + str(i) + ".xml"
    fw = open(outputXMLFilename, 'w')

    HIFilename = directory +"H3N2_sim_HIdata_withDrift.txt"
    distClusterFilename = directory + "H3N2_sim_distCluster.txt"
    seedNum =  str(10000 + i)
    treeFilename = directory + "H3N2_sim_mds.trees"
    clusterLabelsFilename = directory + "H3N2_sim_mds.clusterLabels.log"
    activeIndicatorsFilename = directory + "H3N2_sim_mds.activeIndicators.log"
    indicatorsFilename = directory + "H3N2_sim_mds.indicatorsStat.log"
    minClusterSize = 10

    f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/simulation/H3N2-v0_46-simulateClustersAndHI-template.xml', 'r')
    for line in f:
        result = re.findall('HIFile', line)
        if(len(result)>0):
            line= "     HIFile=\"" + HIFilename + "\"" +"\n"

        result = re.findall('distClusterFile', line)
        if(len(result)>0):
            line= "		distClusterFile=\""  +distClusterFilename +  "\"" +"\n"
        result = re.findall('seed', line)
        if(len(result)>0):
            line= "		seed = \"" + seedNum +"\""+"\n"
        result = re.findall('minClusterSize', line)
        if(len(result)>0):
            line="		minClusterSize = \"" + str(minClusterSize) + "\"" +"\n"
        result = re.findall('treeFileLog', line)
        if(len(result)>0):
            line= "<logTree id=\"treeFileLog\" logEvery=\"200000\" nexusFormat=\"true\" fileName=\""+ treeFilename+ "\" sortTranslationTable=\"true\">"+"\n"

        result = re.findall('clusterLog', line)
        if(len(result)>0):
            line= "<log id=\"clusterLog\" logEvery=\"200000\" fileName=\"" + clusterLabelsFilename+ "\">"+"\n"
        result = re.findall('activeIndicatorsLog', line)
        if(len(result)>0):
            line= "<log id=\"activeIndicatorsLog\" logEvery=\"200000\" fileName=\"" +activeIndicatorsFilename + "\">"+"\n"
        result = re.findall('indicatorsLog', line)
        if(len(result)>0):
            line= "<log id=\"indicatorsLog\" logEvery=\"200000\" fileName=\"" +indicatorsFilename + "\">"+"\n"

        fw.write(line)

    fw.close()




#looks like ipython can't display the shell output
from subprocess import call

for i in range(1,11,1):
    directory = baseDir + "rep" + str(i) + "/"
    if not os.path.exists(directory):
        os.makedirs(directory)
    myCommand = "java -jar /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/software/beast_v0_46-simulateViruses.jar /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/simulation/H3N2-sim_v0_46_rep" + str(i) + ".xml"
    call([myCommand], shell=True)
