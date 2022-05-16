import os
from collections import Counter


os.chdir("/home/pcr98/GenomeAnalysis/GenomeAnalysis/analysis/expression/D1")
f=open("D1_concat.counts","r")
lines=f.readlines()
result=[]
for x in lines:
	result.append(x.split()[1])
f.close()
#print(result)
exp = dict(Counter(result))
int_exp = {int(k) : v for k, v in exp.items()}
sorted_exp = sorted(int_exp.items())
#expf = sorted(exp.items())
print(sorted_exp)
with open("D1_distribution.txt", 'w') as f:
	for key, value in sorted_exp:
		f.write('%s %s\n' % (key, value))


#D3
os.chdir("/home/pcr98/GenomeAnalysis/GenomeAnalysis/analysis/expression/D3")
f=open("D3_concat.counts","r")
lines=f.readlines()
result=[]
for x in lines:
        result.append(x.split()[1])
f.close()
#print(result)
exp = dict(Counter(result))
int_exp = {int(k) : v for k, v in exp.items()}
sorted_exp = sorted(int_exp.items())
#expf = sorted(exp.items())
print(sorted_exp)
with open("D3_distribution.txt", 'w') as f:
        for key, value in sorted_exp:
                f.write('%s %s\n' % (key, value))

