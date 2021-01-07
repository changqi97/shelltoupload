
###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-05 16:26:34
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-06 15:00:14
 # @Email: changqi97@gmail.com
###
upname=$2
downname=$1


echo "2:$downname download begin"
sleep 5
tmux new -s down0_$downname -d
tmux send-keys -t down0_$downname.0 "bash ./ccc.sh $downname 0" Enter
sleep 5
tmux new -s down1_$downname -d
tmux send-keys -t down1_$downname.0 "bash ./ccc.sh $downname 1" Enter
sleep 5
tmux new -s down2_$downname -d
tmux send-keys -t down2_$downname.0 "bash ./ccc.sh $downname 2" Enter
sleep 5

python upsplit.py --dir $upname
echo "2:$upname upload begin"
for I in {0..5};do
    sleep 5
    tmux new -s up$I$upname -d
    tmux send-keys -t up$I$upname.0 "bash ./upload.sh $upname $I" Enter
done
echo "2:$downname download done | $upname upload done"
