echo "download_begin"
down=$1

python split.py --dir $down
echo "download: $down begin"
for I in {0..5};do
    sleep 5
    tmux new -s download$I$down -d
    tmux send-keys -t download$I$down.0 "bash ./subdown.sh $down $I" Enter
done