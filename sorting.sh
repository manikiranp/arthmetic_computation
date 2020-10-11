#!/bin/bash -x

echo "Arthmetic Computation & Sorting"
read -p "Enter three numbers: " a b c
declare -A compute
compute[r1]=$(($a+$b*$c))
compute[r2]=$(($a*$b+$c))
compute[r3]=`perl -E "say $c+$a/$b"`
compute[r4]=`perl -E "say $a%$b+$c"`

echo "$a+$b*$c = ${compute[r1]}"
echo "$a*$b+$c = ${compute[r2]}"
echo "$c+$a/$b = ${compute[r3]}"
echo "$a%$b+$c = ${compute[r4]}"

