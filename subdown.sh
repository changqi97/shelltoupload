###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-05 18:22:24
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-06 11:30:29
 # @Email: changqi97@gmail.com
### 
#!/bin/bash

source activate py37
sleep 3
python --version
echo "$1_$2.txt"
mkdir /data/$1_$2/
sleep 2
gdc-client download -m ../DX_dir/$1/$1_$2.txt -d /data/$1_$2
