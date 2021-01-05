###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-05 18:22:24
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-05 18:22:54
 # @Email: changqi97@gmail.com
### 
#!/bin/bash

source activate py37
python --version
echo "$1_$2.txt"
mkdir /data/$1_$2/
gdc-client download -m ../DX_dir/$1/$1_$2.txt -d /data/$1_$2
python wait.py --dir $1 --num $2
cd ~
mkdir /onedrive/DX_test/$1_$2
./rclone copy /data/$1_$2 /onedrive/DX_test/$1_$2
rm -rf /data/$1_$2
echo "$1_$2_download_upload_done"
