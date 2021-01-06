###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-06 13:49:40
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-06 14:10:59
 # @Email: changqi97@gmail.com
### 

file=$1

echo "tttt"
for I in {0..3};do
    tmux new -s test1$I$file -d
    tmux send-keys -t test1$I$file.0 "bash testt.sh $I" Enter
done
echo "done"