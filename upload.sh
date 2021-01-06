###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-06 11:24:59
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-06 19:23:32
 # @Email: changqi97@gmail.com
### 
cd ~
mkdir onedrive/DX_new/$1_$2
echo "upload begin"
./rclone copy /data/$1_$2 /onedrive/DX_new/$1_$2
echo "$1_$2_download_upload_done"