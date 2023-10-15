
import numpy as np
import sys
import os
import math
import matplotlib.pyplot as plt

dir = "."



#def normalise(data):
#	integralSum = 0;
#	for (i in range(0,data[0].))
#     for(int i=0; i<val.size()-1; i++) {
#       //QPointF &p1 = m_points[i];
#        //QPointF &p2 = m_points[i+1];
#        double dx = index[i+1] - index[i];
#        double dy = val[i+1] + val[i];
#        integralSum += dx*dy;
#    }
#    integralSum *= 0.5;
#    for(int i=0; i<val.size(); i++) {
#        val[i] /= integralSum;
#    }


def load(name):
	with open(name) as f:
	    data = f.read()

	data = data.split('\n')
	while '' in data:
	    data.remove('')

	d = [[],[],[]]


	d[0] = [row.split('\t')[0] for row in data]
	d[0] = [float(i) for i in d[0]]
	d[1] = [row.split('\t')[1] for row in data]
	d[2]= [row.split('\t')[2] for row in data]
	d[2] = [float(i) for i in d[2]]
	return d

def getAverage(data):
	avg = np.zeros(len(data[0]))
	for d in data:
		avg += d
	avg/=len(data)
	return avg	

def getSigma(data, average):
	sigma = np.zeros(len(data[0]))
	for d in data:
		sigma += np.power(d - average,2)

	sigma = np.sqrt(sigma/len(data))
	return sigma


def addToPlot(path, ax, col, lbl, lw, col2):
	data = []
	x = []
	for filename in os.listdir(path):
		if filename==".DS_Store": continue
		print("adding" +  filename)
		if not os.path.isdir(path + "/" + filename):
			d = load(path + "/" + filename)
			#data.append(d[1])
			x = d[0]

	avg = getAverage(data)
	sigma = getSigma(data, avg)

	ax.plot(x,avg, c=col, label=lbl, linewidth=lw)

	fillMin = [xx - y for xx, y in zip(avg, sigma)]
	fillMax = [xx + y for xx, y in zip(avg, sigma)]

	ax1.fill_between(x, fillMin, fillMax, facecolor=col2, edgecolor=col2, interpolate=True, alpha=0.3)


def addFile(filename, ax, col, lbl, lw, col2):
	global curcol
	print("loading " + filename)
	d = load(filename)
	cols = ['tab:red', 'tab:red', 'green', 'tab:orange', 'tab:orange', '#704080','#5030A0','#3030A0','#2020B0', '#2020C0','#4040F0','#3030A0', '#1050FF','#1050FF']
	ax.bar(d[0],d[2], label="Speed improvement", linewidth=1 , alpha = 1.0, color = cols)
	ax1.set_xticklabels(d[1], rotation=90)

	ax1.set_xticks(d[0])


def addToPlotSingle(path, ax, col, lbl, lw, col2):

	if (os.path.isdir(path)):
		for filename in os.listdir(path):
			if not os.path.isdir(path + "/" + filename):
				if filename.endswith(".txt"):
					addFile(path + "/" + filename, ax,col,lbl,lw,col2)
			else:
				addToPlot(path + "/" + filename, ax, col, lbl, lw, col2)
	else:
		addFile(path, ax,col,lbl,lw,col2)



if len(sys.argv) < 2:
	sys.exit(1)

fig = plt.figure()
fig.subplots_adjust(bottom=0.3)

ax1 = fig.add_subplot(111)

ax1.set_title("Speed optimizations")    
ax1.set_xlabel('')
ax1.set_ylabel('Percent')

lw = 2.0

fc = '#B0B0B0'



fcols = ['#F05020', '#2050F0','#50F030', '#40F0F0']

i = 0
col = 0
for path in sys.argv:
	if (i!=0):
		if (os.path.isdir(path)):
			addToPlot(path, ax1, fcols[col], path, 2.0,fcols[col])
		else:
			addToPlotSingle(path, ax1, fcols[col], path, 2.0,fcols[col])
		col+=1
		if (col==len(fcols)):
			col = 0


	i+=1



leg = ax1.legend()
plt.savefig('compare.eps', format='eps', dpi=1000)
#plt.savefig('compare.png', format='png', dpi=1000)

plt.show()