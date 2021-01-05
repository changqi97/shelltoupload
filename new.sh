###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-05 15:34:52
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-05 18:46:57
 # @Email: changqi97@gmail.com
### 

echo "download_begin"
for file in ../DX/*
do 
if [ -f "$file" ]
then
  python split.py --dir $file
  newfile=$file
  sfile=${newfile##*/}
  bash ./subch.sh $sfile
  echo "fu:chdone"
fi
done
