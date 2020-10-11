#!/bin/bash 

echo "Arthmetic Computation & Sorting"
read -p "Enter three numbers: " a b c
declare -A compute
compute[r1]=$(($a+$b*$c))
compute[r2]=$(($a*$b+$c))
compute[r3]=`perl -E "say $c+$a/$b"`
compute[r4]=`perl -E "say $a%$b+$c"`

for (( i=1; i<=4; i++ ))
do
result[$i]=${compute[r$i]}
done

echo "$a+$b*$c = ${result[1]}" 
echo "$a*$b+$c = ${result[2]}"
echo "$c+$a/$b = ${result[3]}"
echo "$a%$b+$c = ${result[4]}"



