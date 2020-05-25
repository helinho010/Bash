#!/bin/bash
function factorial()
{
 numero=$1
 factorialDelNumero=1
 while (( $numero >= 1 ))
 do
  factorialDelNumero=`echo -e "$factorialDelNumero*$numero" | bc | tr -d "\n" | tr -d '\\' 2>1`
  ((numero--))
 done
 echo "$factorialDelNumero"
}

numeroFinal=`factorial $1`
suma=0
for (( i=1; i<=${#numeroFinal}; i++))
do
 digito=`echo $numeroFinal | cut -c$i-$i`
 ((suma=$suma+$digito))
done
echo "La suma de todos los digitos es: $suma"
