'''
Descripttion: 
version: 
Author: Chang Qi
Date: 2021-01-06 11:48:25
LastEditors: Chang Qi
LastEditTime: 2021-01-06 11:50:54
Email: changqi97@gmail.com
'''
import os
import shutil


for index,item in enumerate(os.listdir('/data/LIHC')):
    shutil.move(os.path.join('/data/LIHC',item),os.path.join('/data/LIHC_{}/{}'.format(index%3,item)))    
