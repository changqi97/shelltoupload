###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-06 11:24:59
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-06 11:25:14
 # @Email: changqi97@gmail.com
### 
cd ~
mkdir /onedrive/DX_test/$1_$2
./rclone copy /data/$1_$2 /onedrive/DX_test/$1_$2
rm -rf /data/$1_$2
echo "$1_$2_download_upload_done"