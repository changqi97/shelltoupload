###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-05 15:34:52
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-06 14:58:04
 # @Email: changqi97@gmail.com
### 

# file1 : name of upload case | eg: LIHC
# file2 : name of download case | eg: LUAD 

echo "download_begin"
file1=$1
file2=$2

python split.py --dir $file2
bash ./subch.sh $file2 $file1
echo "$file2 $file1:done"
