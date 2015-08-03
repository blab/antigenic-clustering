__author__ = 'charles'


import rethinkdb as r
import json
import datetime
import pytz
import pandas as pd
import numpy as np
import numpy

from matplotlib import colors
import matplotlib.pyplot as plt


"""Default JSON serializer."""
import calendar, datetime

def myDatetimeSerializer(obj):
    if isinstance(obj, datetime.datetime):
        if obj.utcoffset() is not None:
            obj = obj - obj.utcoffset()
    return obj.strftime('%Y-%m-%d')



df=pd.read_json('/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/titerFile/bedford_integrating_2014_h3n2_titerMatrix.json')

df.index = range(0,len(df.index))

#d_df= pd.Series( np.nan, index=df.index)
#formatDT = "%Y-%m-%d"
#for k in range(0,len(df.index)):
#    d_df[k] =datetime.datetime.strptime(df['collection_date'][k], formatDT)

df['virusDate'] = df['virusYear']
#df=df.drop('collection_date', 1)
df=df.sort(columns='virusDate')

#df['v_name'] = df.v_strain + "_" + df.passage_history   #if doesn't work (eg. like time), use df.variable.map(str)
df['v_name'] = df.v_strain

unique_v_strain = df['v_name'].unique()
v_series=pd.Series(range(0,len(unique_v_strain)),  index=unique_v_strain)
#want to attach the virus submissiond ate to it.


#colDateMap = {}
#for i in range(0,len(df)):
#    colDateMap[  df.ix[i,'v_name']] =d_df[i]
#
#colDate_unique_v_strain = []
#for i in range(0,len(unique_v_strain)):
#    colDate_unique_v_strain.append(colDateMap[unique_v_strain[i]])
#
#find the tick year.. half a year..



#create a n by m tables

#sort the sera
#df['s_full'] =df.s_strain +"_" + df.additional
df['s_full'] =df.s_strain

unique_s_strain = pd.Series(df['s_full'].unique())
unique_s_strain_name = unique_s_strain.str.extract('/(.+?)_')
#n= np.zeros(len(unique_s_strain))
#for k in range(0,len(unique_s_strain)):
#    n[k] =  unique_s_strain_name[k][-2:]

#us = pd.DataFrame({"year":  , "strain":unique_s_strain})
#us = us.sort(columns = "year")
#us['strain']

#s_series=pd.Series(range(0,len(unique_s_strain)),  index=us['strain'])
s_series=pd.Series(range(0,len(unique_s_strain)),  index=unique_s_strain)

titerTable = np.empty((len(unique_v_strain), len(unique_s_strain)))
titerTable[:] = numpy.NAN

#NEED TO DEAL WITH  < and ND properly!
for k in range(0,len(df.index)):
    if((df['titer'][k].rstrip() != "<")&(df['titer'][k].rstrip() != "ND")):
        #print str(v_series[df['v_name'][k]]) + ", " + str(s_series[df['s_full'][k]])  + ", " +  df['titer'][k]
        if(df['titer'][k].isdigit()):
            titerTable[v_series[df['v_name'][k]] , s_series[df['s_full'][k]] ] = df['titer'][k]
        else:
            titerTable[v_series[df['v_name'][k]] , s_series[df['s_full'][k]] ] = np.nan
    elif(df['titer'][k].rstrip() == "<"):
        titerTable[v_series[df['v_name'][k]] , s_series[df['s_full'][k]] ] = 20
    else:
        titerTable[v_series[df['v_name'][k]] , s_series[df['s_full'][k]] ] = np.nan





tt = pd.DataFrame(titerTable, index=v_series.index, columns=s_series.index)


tt_sub = tt

masked_array = np.ma.array ( np.log2(tt_sub), mask=np.isnan(tt_sub))
plt.figure(1, figsize=(15,20))
#cmap = mpl.cm.Blues
cmap = plt.cm.YlOrRd
cmap.set_bad(color = 'w', alpha = 1.) #set the missing data to white...
bounds=[0,5,6,7,8,9,20]
norm = colors.BoundaryNorm(bounds, cmap.N)
plt.gca().invert_yaxis()
ticks = np.arange(0, len(tt_sub.columns))+0.5  #be careful here!!! the minus 1 here is a "patch" .not sure why it is -1/!!!!
labels = tt_sub.columns.values
#plt.gca().xaxis.tick_top()
plt.xticks(rotation=90)
plt.xticks(ticks, labels, fontsize=10)
#plt.gca().xaxis.set_label_position('top')
plt.xlabel('Serum')
#yticks = np.arange(0,len(tt_sub.index)) + 0.5
#ylabels= tt_sub.index
#plt.yticks(yticks,ylabels, fontsize=9)
plt.ylabel('Virus')
plt.pcolormesh( masked_array, cmap=cmap,norm=norm, edgecolors='None')
plt.show()



