#!/bin/bash

echo -e "\n $(date +%T) \n"
n=0
for (( i=1; i<=$1; i++ ))
do
 val=$(echo "$i^$i" |bc -l)
 val=${val//'\'/ }
 val=$(echo $val |tr -d "\n" | tr -d " ")
 n=$(echo "$val+$n" | bc -l)
done
 n=${n//'\'/ }
 n=$(echo $n | tr -d "\n" | tr -d " ")
 ((digitos=${#n}-10))
 
printf %b "\033[0;33m Los ultimos 10 digitos de la sumatoria 1^1+2^2+...+n^n es: ${n:digitos:10} \033[0m \n"
echo -e "\n $(date +%T)"
