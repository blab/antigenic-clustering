__author__ = 'charles'


#based on the template, modify the XML to analyze the simulated data


#what changes
# the filename of the HI data

java -jar /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/software/beast_v0_46-simulateViruses.jar /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/H3N2-v0_46-analyzeSimData-template.xml
java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/H3N2-v0_46-analyzeSimData-template-gizmo.xml


#MCMC runs 50M.. prints every 0.5M



import os
import re

completionPercentage = [0.05, 0.1,0.2, 0.5]
for c in completionPercentage:
    for run in range(1,11,1):

        outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_completion" + str(c) +"_rep" + str(run) + ".xml"
        fw = open(outputXMLFilename, 'w')

        thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-completion_" + str(c)+".txt"

        f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo.xml', 'r')
        for line in f:
            result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
            if(len(result)>0):
                #print line
                line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"

            fw.write(line)

        fw.close()




#realistic thinning
for run in range(1,11,1):

    outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_realistic_rep" + str(run) + ".xml"
    fw = open(outputXMLFilename, 'w')

    thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-realisticThinning.txt"

    f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo.xml', 'r')
    for line in f:
        result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
        if(len(result)>0):
            #print line
            line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"

        fw.write(line)


#realistic thinning v2
for run in range(1,11,1):

    outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_realistic_v2_rep" + str(run) + ".xml"
    fw = open(outputXMLFilename, 'w')

    thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-realisticThinning_v2.txt"

    f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo.xml', 'r')
    for line in f:
        result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
        if(len(result)>0):
            #print line
            line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"

        fw.write(line)

#maybe the only thing that needs to change is the HI data source file





#realistic thinning v3
for run in range(1,11,1):

    outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_realistic_v3_rep" + str(run) + ".xml"
    fw = open(outputXMLFilename, 'w')

    thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-realisticThinning_v3.txt"

    f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo.xml', 'r')
    for line in f:
        result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
        if(len(result)>0):
            #print line
            line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"

        fw.write(line)



#realistic thinning v2  - with a bigger MDS precision  to 0.3
for run in range(1,11,1):

    outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_realistic_v2-mds0_3_rep" + str(run) + ".xml"
    fw = open(outputXMLFilename, 'w')

    thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-realisticThinning_v2.txt"

    f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo.xml', 'r')
    for line in f:
        result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
        if(len(result)>0):
            #print line
            line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"
        result = re.findall('	<parameter id=\"mds.precision\" value=\"0.1\" lower=\"0.0\"/>', line)
        if(len(result)>0):
            line='	<parameter id=\"mds.precision\" value=\"0.3\" lower=\"0.0\"/>'
        fw.write(line)



#realistic thinning v2  - with a bigger MDS precision  to 0.5
for run in range(1,11,1):

    outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_realistic_v2-mds0_5_rep" + str(run) + ".xml"
    fw = open(outputXMLFilename, 'w')

    thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-realisticThinning_v2.txt"

    f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo.xml', 'r')
    for line in f:
        result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
        if(len(result)>0):
            #print line
            line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"
        result = re.findall('	<parameter id=\"mds.precision\" value=\"0.1\" lower=\"0.0\"/>', line)
        if(len(result)>0):
            line='	<parameter id=\"mds.precision\" value=\"0.5\" lower=\"0.0\"/>'
        fw.write(line)




#realistic thinning   - with a bigger MDS precision  to 0.3
for run in range(1,11,1):

    outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_realistic-mds0_3_rep" + str(run) + ".xml"
    fw = open(outputXMLFilename, 'w')

    thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-realisticThinning.txt"

    f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo.xml', 'r')
    for line in f:
        result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
        if(len(result)>0):
            #print line
            line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"
        result = re.findall('	<parameter id=\"mds.precision\" value=\"0.1\" lower=\"0.0\"/>', line)
        if(len(result)>0):
            line='	<parameter id=\"mds.precision\" value=\"0.3\" lower=\"0.0\"/>'
        fw.write(line)





#completion rate 0.05
for run in range(1,11,1):

    outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_completion" + str(0.05) +"-mds0_3_rep" + str(run) + ".xml"
    fw = open(outputXMLFilename, 'w')

    thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-completion_" + str(0.05)+".txt"

    f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo.xml', 'r')
    for line in f:
        result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
        if(len(result)>0):
            #print line
            line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"
        result = re.findall('	<parameter id=\"mds.precision\" value=\"0.1\" lower=\"0.0\"/>', line)
        if(len(result)>0):
            line='	<parameter id=\"mds.precision\" value=\"0.3\" lower=\"0.0\"/>'
        fw.write(line)

    fw.close()

#completion rate 0.5
for run in range(1,11,1):

    outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_completion" + str(0.5) +"-mds0_3_rep" + str(run) + ".xml"
    fw = open(outputXMLFilename, 'w')

    thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-completion_" + str(0.5)+".txt"

    f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo.xml', 'r')
    for line in f:
        result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
        if(len(result)>0):
            #print line
            line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"
        result = re.findall('	<parameter id=\"mds.precision\" value=\"0.1\" lower=\"0.0\"/>', line)
        if(len(result)>0):
            line='	<parameter id=\"mds.precision\" value=\"0.3\" lower=\"0.0\"/>'
        fw.write(line)

    fw.close()



#realistic thinning   - with a bigger MDS precision  to 0.3
for run in range(1,11,1):
    outputXMLFilename = "/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-analyze_v0_46_realistic_v3-mds0_3_rep" + str(run) + ".xml"
    fw = open(outputXMLFilename, 'w')

    thinned_sim_HI_fileName = "/home/ycheung/clustering/simulation/data/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-realisticThinning_v3.txt"

    f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo/H3N2-v0_46-analyzeSimData-template-gizmo.xml', 'r')
    for line in f:
        result = re.findall('/home/ycheung/clustering/data/H3N2_HI_data.tsv', line)
        if(len(result)>0):
            #print line
            line= "			fileName=\"" + thinned_sim_HI_fileName    + "\"" +"\n"
        result = re.findall('	<parameter id=\"mds.precision\" value=\"0.1\" lower=\"0.0\"/>', line)
        if(len(result)>0):
            line='	<parameter id=\"mds.precision\" value=\"0.3\" lower=\"0.0\"/>'
        fw.write(line)

