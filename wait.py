import argparse
import os
import time

parser = argparse.ArgumentParser(description='Eyeball status classification')
parser.add_argument('--dir', type=str)
parser.add_argument('--num', type=int)
args = parser.parse_args()

pathlist = []
with open('../DX_dir/{}/{}_{}.txt'.format(args.dir,args.dir,args.num),'r') as f:
    lines = f.readlines()
    for index,line in enumerate(lines,1):
        _,filename,foldername,_,_ = line.split('\t')
        pathlist.append('/data/{}_{}/{}/{}'.format(args.dir,args.num,foldername,filename))

#print(pathlist)
query_nums = 10
while len(pathlist) and query_nums:
    query_nums -= 1
    for i in pathlist:
        if os.path.exists(i):
            pathlist.remove(i)
        else:
            time.sleep(5)

with open('../log/{}_{}_log.txt'.format(args.dir,args.num),'a') as fout:
    fout.write('\n'.join(pathlist))





