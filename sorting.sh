#!/bin/bash -x

echo "Arthmetic Computation & Sorting"
read -p "Enter three numbers: " a b c
declare -A compute
compute[r1]=$(($a+$b*$c))
compute[r2]=$(($a*$b+$c))
compute[r3]=$(($c+$a/$b))
compute[r4]=$(($a%$b+$c))

for (( i=1; i<=4; i++ ))
do
result[$i]=${compute[r$i]}
done
echo "$a+$b*$c = ${result[1]}" 
echo "$a*$b+$c = ${result[2]}"
echo "$c+$a/$b = ${result[3]}"
echo "$a%$b+$c = ${result[4]}"

for (( i=1; i<5; i++ ))
do
	for (( j=1; j<4; j++ ))
	do
	if [[ ${result[j]} -lt ${result[$((j+1))]} ]]; then
	temp=${result[j]}
	result[$j]=${result[$((j+1))]}
	result[$((j+1))]=$temp
	fi
	done
done
echo "Decending order: ${result[*]}"
