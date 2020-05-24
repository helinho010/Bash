#!/bin/bash

timeInicio=`date +"%H:%M:%S"`
suma=0
for ((i=1; i<=5; i++))  
do
curl "https://www.lemoda.net/tools/numbers/index.es.cgi?number=$i" -o numeroIngles.txt 2>Salida.txt
literal=`cat numeroIngles.txt | head -55 | tail -1 | tr -d " " | tr -d "-"`

cantidadCaracteres=${#literal}
((suma=suma+$cantidadCaracteres))
done
timeFinal=`date +"%H:%M:%S"`

echo -e "tiempo inicio: $timeInicio \n tiempo final: $timeFinal \n"
echo "La suma total es :::$suma:::"
