__author__ = 'charles'

#!/usr/bin/python

import random
import re
import numpy as np



#H1N1
numSeraPerClusterToPrint = 5

for run in range(1,11,1):

    sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift.txt"
    f = open(sim_HI_fileName, 'r')
    thinned_sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-5sera.txt"

    fw = open(thinned_sim_HI_fileName, 'w')
    fw.write(f.readline())   #read the header first

    for line in f:
        lineSplit = line.split('\t')
        serumIsolate = lineSplit[3]
        serumNumber = int(re.findall('c.+s(.+)', lineSplit[3])[0])
        virusCluster =  int(lineSplit[0][1:])
        serumCluster = int(re.findall('c(.+)s', lineSplit[3])[0])
        if(serumNumber <= numSeraPerClusterToPrint):
                    fw.write(line)
    fw.close()


#######################################

###########################################################################################################################


completionPercentage = [0.05, 0.1,0.2, 0.5]
random.seed( 123456 )
for c in completionPercentage:
    for run in range(1,11,1):
        sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-5sera.txt"
        f = open(sim_HI_fileName, 'r')
        thinned_sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-5sera-completion_" + str(c)+".txt"
        fw = open(thinned_sim_HI_fileName, 'w')
        fw.write(f.readline())   #read the header first
        for line in f:
            if(random.uniform(0,1) < c):
                fw.write(line)
        fw.close()
        f.close()


########################################################################################################################

completionPercentage = [0.05, 0.1,0.2, 0.5]
random.seed( 377013 )
for c in completionPercentage:
    for run in range(1,11,1):
        sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift.txt"
        f = open(sim_HI_fileName, 'r')
        thinned_sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-completion_" + str(c)+".txt"
        fw = open(thinned_sim_HI_fileName, 'w')
        fw.write(f.readline())   #read the header first
        for line in f:
            if(random.uniform(0,1) < c):
                fw.write(line)
        fw.close()
        f.close()





##############################################################################################################################

random.seed( 837289 )
for run in range(1,11,1):

    sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift.txt"
    f = open(sim_HI_fileName, 'r')

    thinned_sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-realisticThinning.txt"
    fw = open(thinned_sim_HI_fileName, 'w')

    distCluster_filename = "/Users/charles/Documents/researchData/clustering/simulations/rep"+ str(run)+"/H3N2_sim_distCluster.txt"
    distCluster = np.genfromtxt(distCluster_filename, delimiter=' ')[:,:]
    distCluster = distCluster.astype(int)

    fw.write(f.readline())   #read the header first
    for line in f:
        lineSplit = line.split('\t')
        serumIsolate = lineSplit[3]
        serumNumber = int(re.findall('c.+s(.+)', lineSplit[3])[0])
        virusCluster =  int(lineSplit[0][1:])
        serumCluster = int(re.findall('c(.+)s', lineSplit[3])[0])

        if(serumNumber <= 5):
            if(distCluster[virusCluster][serumCluster] <= 2):
                if(random.uniform(0,1) < 0.13):
                    fw.write(line)
        if(serumNumber > 5):
            if(distCluster[virusCluster][serumCluster] <= 1):
                if(random.uniform(0,1) < 0.3):
                    fw.write(line)
    fw.close()
    f.close()

#####################################################################################################################################

random.seed( 38271 )
for run in range(1,11,1):

    sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift.txt"
    f = open(sim_HI_fileName, 'r')

    thinned_sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-realisticThinning_v2.txt"
    fw = open(thinned_sim_HI_fileName, 'w')

    distCluster_filename = "/Users/charles/Documents/researchData/clustering/simulations/rep"+ str(run)+"/H3N2_sim_distCluster.txt"
    distCluster = np.genfromtxt(distCluster_filename, delimiter=' ')[:,:]
    distCluster = distCluster.astype(int)

    fw.write(f.readline())   #read the header first
    for line in f:
        lineSplit = line.split('\t')
        serumIsolate = lineSplit[3]
        serumNumber = int(re.findall('c.+s(.+)', lineSplit[3])[0])
        virusCluster =  int(lineSplit[0][1:])
        serumCluster = int(re.findall('c(.+)s', lineSplit[3])[0])

        if(serumNumber <= 5):
            if(distCluster[virusCluster][serumCluster] <= 3):
                if(random.uniform(0,1) < 0.13):
                    fw.write(line)
        if(serumNumber > 5):
            if(distCluster[virusCluster][serumCluster] <= 1):
                if(random.uniform(0,1) < 0.3):
                    fw.write(line)
    fw.close()
    f.close()



################################################
#RT3

random.seed( 8979328 )
for run in range(1,11,1):

    sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift.txt"
    f = open(sim_HI_fileName, 'r')

    thinned_sim_HI_fileName = "/Users/charles/Documents/researchData/clustering/simulations/rep" + str(run)+"/H3N2_sim_HIdata_withDrift-realisticThinning_v3.txt"
    fw = open(thinned_sim_HI_fileName, 'w')

    distCluster_filename = "/Users/charles/Documents/researchData/clustering/simulations/rep"+ str(run)+"/H3N2_sim_distCluster.txt"
    distCluster = np.genfromtxt(distCluster_filename, delimiter=' ')[:,:]
    distCluster = distCluster.astype(int)

    fw.write(f.readline())   #read the header first
    for line in f:
        lineSplit = line.split('\t')
        serumIsolate = lineSplit[3]
        serumNumber = int(re.findall('c.+s(.+)', lineSplit[3])[0])
        virusCluster =  int(lineSplit[0][1:])
        serumCluster = int(re.findall('c(.+)s', lineSplit[3])[0])

        if(serumNumber <= 1):
            if(random.uniform(0,1) < 0.2):
                    fw.write(line)
        elif(serumNumber <= 5 & serumNumber >1):
            if(distCluster[virusCluster][serumCluster] <= 3):
                if(random.uniform(0,1) < 0.13):
                    fw.write(line)
        else:
            if(distCluster[virusCluster][serumCluster] <= 1):
                if(random.uniform(0,1) < 0.3):
                    fw.write(line)
    fw.close()
    f.close()
