
###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-05 16:26:34
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-06 11:29:26
 # @Email: changqi97@gmail.com
###
upname=$2
txtname=$1
result=${txtname%%.*} 


echo "2:$result download begin"
sleep 10

bash ./ccc.sh $result 0 &
bash ./ccc.sh $result 1 &
bash ./ccc.sh $result 2 &

for I in {0..2};do
    sleep 3
    echo "2:$upname $I upload begin"
    bash ./upload.sh $upname $I &
done

pid=$!
echo "2:(pid=${pid})begin"
sleep 10
wait ${pid}
python wait.py --dir $result --num 0 &
python wait.py --dir $result --num 1 &
python wait.py --dir $result --num 2 &

echo "2:$result sleep done"
