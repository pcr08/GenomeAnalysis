#!/bin/bash

#script for counting the number and % of expressed genes in each bin. This script has been performed while uppmax was in maintenance, therefore, no need to specify snowy and so on (only used with computer bash)
for n in /home/mobaxterm/Desktop/gff/D1/*
do
echo $n
input=$n
echo $input
noexp=0
exp=0
cat $input |while IFS= read -r line;
do
#echo "$line"
value=$(echo $line | cut -d ' ' -f2)
#echo "Value $value"
if [ $value -eq 0 ]; then
noexp=$[$noexp+1]
#echo "noexp bucle  $noexp"
else
exp=$[$exp+1]
#echo "exp bucle $exp"
fi
echo "$exp $noexp" > "out.txt"
done
#echo $exp
#echo $noexp
cd /home/mobaxterm/Desktop/gff
exp=$(cut -d ' ' -f1 out.txt)
noexp=$(cut -d ' ' -f2 out.txt)
total=$(($exp+$noexp))
#echo "exp $exp"
#echo "noexp $noexp"
#echo "total $total"
totalexp=$(($exp*100/$total))
#echo "totalexp $totalexp"
echo "Bin $n Expressed genes $exp and % expressed genes $totalexp \n" >> D1expressed.out
done

for n in /home/mobaxterm/Desktop/gff/D3/*
do
echo $n
input=$n
echo $input
noexp=0
exp=0
cat $input |while IFS= read -r line;
do
#echo "$line"
value=$(echo $line | cut -d ' ' -f2)
#echo "Value $value"
if [ $value -eq 0 ]; then
noexp=$[$noexp+1]
#echo "noexp bucle  $noexp"
else
exp=$[$exp+1]
#echo "exp bucle $exp"
fi
echo "$exp $noexp" > "out2.txt"
done
#echo $exp
#echo $noexp
cd /home/mobaxterm/Desktop/gff
exp=$(cut -d ' ' -f1 out2.txt)
noexp=$(cut -d ' ' -f2 out2.txt)
total=$(($exp+$noexp))
#echo "exp $exp"
#echo "noexp $noexp"
#echo "total $total"
totalexp=$(($exp*100/$total))
#echo "totalexp $totalexp"
echo "Bin $n Expressed genes $exp and % expressed genes $totalexp \n" >> D3expressed.out
done

