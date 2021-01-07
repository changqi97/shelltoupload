echo "$upname upload begin"
upname=$1
python upsplit.py --dir $upname
sleep 5
for I in {0..5};do
    sleep 5
    tmux new -s up$I$upname -d
    tmux send-keys -t up$I$upname.0 "bash ./subup.sh $upname $I" Enter
done
echo "2:$downname download done | $upname upload done"