###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-05 15:34:52
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-06 11:45:20
 # @Email: changqi97@gmail.com
### 

echo "download_begin"
file1=$1
for file2 in ../DX/*
do 
if [ -f "$file2" ]
then
  python split.py --dir $file2
  newfile=$file2
  sfile=${newfile##*/}
  bash ./subch.sh $sfile $file1
  echo "$sfile 1:done"
fi
file1=$sfile
done
