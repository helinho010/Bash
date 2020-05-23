#!/bin/bash

suma=0
for ((i=340; i<=342; i++))  
do
curl "https://www.lemoda.net/tools/numbers/index.es.cgi?number=$i" -o numeroIngles.txt 2>Salida.txt
literal=`cat numeroIngles.txt | head -55 | tail -1 | tr -d " " | tr -d "-"`

cantidadCaracteres=${#literal}
((suma=suma+cantidadCaracteres))
echo "El numero $i en literal ingles es: $literal y la cantidad de caracteres es ${#literal}" 
echo -e "\n \t $suma"
done
