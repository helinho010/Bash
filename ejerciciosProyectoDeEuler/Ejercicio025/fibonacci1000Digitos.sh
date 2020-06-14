#!/bin/bash
echo -e "\n `date +%T` \n"

n=4500
pfi="1.618034"
x_n=0

while [[ ! ${#x_n} = $1 ]]
do
x_n=`echo "scale=6; (($pfi^$n)-(1-$pfi)^$n)/sqrt(5);" |bc`
x_n=`echo $x_n | tr -d '\' 2>/dev/null | tr -d "\t" | tr -d " "`
x_n=${x_n%.*}
((n++))
done
echo -e "\n$x_n\n\n cantidad de digitos: ${#x_n} \n posicion del numero enecimo: $n \n"
echo -e "\n `date +%T` \n"
