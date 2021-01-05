
###
 # @Descripttion: 
 # @version: 
 # @Author: Chang Qi
 # @Date: 2021-01-05 16:26:34
 # @LastEditors: Chang Qi
 # @LastEditTime: 2021-01-05 18:48:26
 # @Email: changqi97@gmail.com
###
txtname=$1
result=${txtname%%.*} 
for I in {0..8};do
    echo "zijiaoben:$result"
    echo "zijiaoben:$I"
    sleep 1 
    bash ./ccc.sh $result $I &
done
bash ./ccc.sh $result 9
pid=$!
echo "zi:(pid=${pid})begin"
sleep 10
wait ${pid}
echo "zijiaoben:sleep done"
