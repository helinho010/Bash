#!/bin/bash

inicio=`date +"%H:%M:%S"`
sumaInicioMesDomingo=0
for (( i=1901; i<=2000; i++))
do
 contadorMeses=1
 while (( contadorMeses <= 12))
 do
  diaUno=`ncal -m $contadorMeses $i | grep do | cut -c4-5 | bc`
  if [[ $diaUno = 1 ]]
  then
   echo -e "\n el mes y anio donde comienza con un domingo es:"
   ncal -m $contadorMeses $i
   ((sumaInicioMesDomingo++))
  fi
 ((contadorMeses++))
 done
done
echo -e "\t El total de domingos de cada mes que comienzan en domingo es: $sumaInicioMesDomingo" 
final=`date +"%H:%M:%S"`
echo "El programa se ejecuto a las : $inicio \n y termino a las: $final"
