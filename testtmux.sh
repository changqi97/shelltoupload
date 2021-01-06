###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-06 13:49:40
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-06 14:10:59
 # @Email: changqi97@gmail.com
### 

echo "tttt"
tmux new -s test1 -d
tmux send-keys -t test1.0 "bash testt.sh" Enter
echo "done"