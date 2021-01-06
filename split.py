'''
Descripttion: 
version: 
Author: Chang Qi
Date: 2021-01-05 15:44:57
LastEditors: Chang Qi
LastEditTime: 2021-01-06 10:58:06
Email: changqi97@gmail.com
'''

import argparse
import os

parser = argparse.ArgumentParser(description='Eyeball status classification')
parser.add_argument('--dir', type=str)

args = parser.parse_args()

_,txtname = os.path.split(args.dir)
os.makedirs('../DX_dir/{}'.format(txtname[:-4]),exist_ok=True)

with open('../DX/{}'.format(txtname),'r')as f:
    lines = f.readlines()
    for index,line in enumerate(lines,1):
        with open('../DX_dir/{}/{}_{}.txt'.format(txtname[:-4],txtname[:-4],index%3),'a+')as tmp:
            tmp.write(line)
