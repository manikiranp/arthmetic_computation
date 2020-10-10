#!/bin/bash -x

echo "Arthmetic Computation & Sorting"
read -p "Enter three numbers: " a b c
ar1=$(($a+$b*$c))
ar2=$(($a*$b+$c))
ar3=`perl -E "say $c+$a/$b"`
ar4=`perl -E "say $a%$b+$c"`

echo "$a+$b*$c = $ar1"
echo "$a*$b+$c = $ar2"
echo "$c+$a/$b = $ar3"
echo "$a%$b+$c = $ar4"

