__author__ = 'charles'
#!/usr/bin/python



treeName = '/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1/H3N2_mds.trees'   #name of the tree file
outTreeName = '/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_1-consensus.tree' #output file name



treeName = '/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_05/H3N2_mds.trees'
outTreeName = '/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_05-consensus.tree'   #output file name


treeName = '/Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_15/H3N2_mds.trees'
outTreeName = '/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_15-consensus.tree'   #output file name



groupNames = ['A/HongKong/1/1968',
              'A/England/42/1972',
              'A/Victoria/3/1975',
              'A/Bangkok/1/1979',
              'A/Mississippi/1/1985',
              'A/Sichuan/2/1987',
              'A/Beijing/353/1989',
              'A/Beijing/32/1992',
              'A/Shandong/9/1993',
              'A/Johannesburg/33/1994',
              'A/Wuhan/359/1995',
              'A/Sydney/5/1997',
              'A/Fujian/411/2002',
              'A/California/7/2004',
              'A/Wisconsin/67/2005',
              'A/Brisbane/10/2007',
              'A/Perth/16/2009']







import re
import numpy as np

#myabe I need to use burn in



f = open(treeName, 'r')


numGroups = len(groupNames)


#store as dictionary.... key=groupName and value = index
groupIndexes = {}

beginReading = 0
#read each line
for line in f:
    if(beginReading == 0):
        if (line.find("Translate") != -1):
            beginReading = 1
    else:
        if(line.find(";") != -1):
            break
        out = re.split(' |,', line)
        groupIndexes[out[1].strip()] = int(out[0])   #groupIndex = node + 1






numNodes = 803
countShare =  np.zeros((numNodes, numGroups+1), dtype=int) #so I have a n x m matrix, where n = # of nodes, and m = # of pre-specified groups

groupLabel = np.zeros(numGroups, dtype=int)
f = open(treeName, 'r')




#so what that means is this:
# for each tree, I parse the node number and cluster for each node. Then, using the list of viruses pre-specified, I determine which virus from that list shares the same cluster label for each of the node. If the node does not share the same label with any of the virus from that list, then it belongs to the last group

numObservations = 0
numBurnIns = 250
for line in f:
    if(line.find("STATE") != -1):
        if(numObservations >= numBurnIns):
            #extract the cluster label for each node
            myHit = re.split('&',line)
            clusterArray = np.zeros(numNodes, dtype=int)
            for i in range(3,len(myHit)):
                node = re.findall('node=([0-9]+)', myHit[i])[0]
                clusterArray[int(node)] =  re.findall('cluster=([0-9]+)', myHit[i])[0]
            #Assign cluster label to each special virus because the labels change in each tree
            for i in range(0,numGroups):
                groupLabel[i] = clusterArray[groupIndexes[groupNames[i]]-1]
            #assign which special virus's group does the node belong to
            for curNode in range(0,numNodes):
                found = 0
                for curG in range(0,numGroups):
                    if( clusterArray[curNode] == groupLabel[curG]):
                        countShare[curNode, curG] = countShare[curNode, curG] + 1
                        found = 1
                        break
                if(found == 0):
                    countShare[curNode, numGroups] = countShare[curNode, numGroups] + 1
        numObservations = numObservations + 1
        #break



maxIndex = np.zeros(numNodes, dtype=int)
#get the most likely clustering for each node
for curNode in range(0,numNodes):
    maxValue = 0
    maxIndex[curNode] = -1
    for curGroup in range(0,numGroups+1):
        if(countShare[curNode, curGroup]> maxValue):
            maxValue = countShare[curNode, curGroup]
            maxIndex[curNode] = curGroup


#Another way: max identified index with at least 10% concordance
#force grouping onto the the clusters
maxIndex10pct = np.zeros(numNodes, dtype=int)
#get the most likely clustering for each node
for curNode in range(0,numNodes):
    maxValue = 0
    maxIndex10pct[curNode] = -1
    for curGroup in range(0,numGroups):
        if(countShare[curNode, curGroup]> maxValue):
            maxValue = countShare[curNode, curGroup]
            maxIndex10pct[curNode] = curGroup
        if(float(maxValue)/float(numObservations - numBurnIns) < 0.1):
            maxIndex10pct[curNode] = numGroups   #the remaining bin



#now, I want to append the tree..

f = open(treeName, 'r')
foundLine = 0
print f
maxPosteriorValue = float('-inf')
maxLine = ""
numBurnIns = 250
numObservations = 0
for line in f:
    if(line.find("STATE") != -1):
        if(numObservations >= numBurnIns):
            posterior = re.findall('posterior=(-[0-9]+)',  line)[0]
            if( maxPosteriorValue < float(posterior)):
                maxPosteriorValue = float(posterior)
                maxLine = line
        numObservations = numObservations + 1

f.close()


num = 0
fw = open(outTreeName, 'w')
f = open(treeName, 'r')
for line in f:
    if(line.find("STATE") == -1):
        fw.write(line)
    else:
        textToFind = "node=" + str(0) +"]"
        index = maxLine.find(textToFind)
        while(index != -1):
            maxLine = maxLine[:index]+"consensus=" + str(maxIndex10pct[num]) +"," + maxLine[index:]
            num = num + 1
            textToFind = "node=" + str(num) +"]"
            index = maxLine.find(textToFind)
        fw.write(maxLine)
        fw.write(maxLine) #I kind of think figTree has a bug. Requires two trees to load into figtree
        break

fw.close()


#    fw.close()
    #f.close()
    #fp.close()
