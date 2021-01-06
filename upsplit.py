'''
Descripttion: 
version: 
Author: Chang Qi
Date: 2021-01-06 11:48:25
LastEditors: Chang Qi
LastEditTime: 2021-01-06 14:51:37
Email: changqi97@gmail.com
'''
import os
import shutil
import argparse

parser = argparse.ArgumentParser(description='Eyeball status classification')
parser.add_argument('--dir', type=str)
args = parser.parse_args()

for i in range(3):
    os.mkdir('/data/{}_{}'.format(args.dir,i+3))
    for index,item in enumerate(os.listdir('/data/{}_{}'.format(args.dir,i))):
        if index%2:
            shutil.move(os.path.join('/data/{}_{}'.format(args.dir,i),item),os.path.join('/data/{}_{}/{}'.format(args.dir,i+3,item)))    
