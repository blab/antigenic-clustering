__author__ = 'charles'
#!/usr/bin/python

#cur = 0
#lineCount = 0
#ind = list()



fp = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2/tree/H3N2_C3b-mds0_05-p_on.txt', 'r')
f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2/tree/H3N2_C3b-mds0_05-maxPosterior.trees', 'r')
fw = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2/tree/H3N2_C3b-mds0_05-maxPosterior-p_on-integerScaledBy100Round.trees', 'w')

fp = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/tree/H1N1_C3b-mds0_1-p_on.txt', 'r')
f = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/tree/H1N1_C3b-mds0_1-maxPosterior.trees', 'r')
fw = open('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/tree/H1N1_C3b-mds0_1-maxPosterior-p_on-integerScaledBy100Round.trees', 'w')




z
pon = []

for line in fp:
    pon.append(line[:-1])

print pon


pInt = []
for num in range(0,len(pon),1):
    pInt.append(int(round(float(pon[num])*100)))



print f
for line in f:
    if (line.find("STATE") != -1):
        num=0
        textToFind = "node=" + str(0) +"]"
        index = line.find(textToFind)
        while(index != -1):
            #print str(num) + ": " + str(index)
            #line =  line[:index]+"p=" + pon[num] +"," + line[index:]
            line =  line[:index]+"p=" + str(pInt[num]) +"," + line[index:]
            num = num + 1
            textToFind = "node=" + str(num) +"]"
            index = line.find(textToFind)

            #print line
            #index = line.find("node=108]")
            #print line[: (index + 8)] + ", p=0.1234" + line[(index+8):]
        print line
    fw.write(line)


#    fw.close()
    #f.close()
    #fp.close()
