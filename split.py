'''
Descripttion: 
version: 
Author: Chang Qi
Date: 2021-01-05 15:44:57
LastEditors: Chang Qi
LastEditTime: 2021-01-06 20:38:19
Email: changqi97@gmail.com
'''

import argparse
import os

parser = argparse.ArgumentParser(description='splitDXtxt')
parser.add_argument('--dir', type=str)

args = parser.parse_args()

# _,txtname = os.path.split(args.dir)
os.mkdir('../DX_dir/{}'.format(args.dir))

with open('../DX/{}.txt'.format(args.dir),'r')as f:
    lines = f.readlines()
    for index,line in enumerate(lines):
        if index==0:
            for i in range(6):
                 with open('../DX_dir/{}/{}_{}.txt'.format(args.dir,args.dir,i),'a+')as tmp:
                    tmp.write(line)
        else:
            with open('../DX_dir/{}/{}_{}.txt'.format(args.dir,args.dir,index%6),'a+')as tmp:
                tmp.write(line)
