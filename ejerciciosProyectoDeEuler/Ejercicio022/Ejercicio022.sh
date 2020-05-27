#!/bin/bash
function numPosicion()
{
 valor=`printf "%d" \'$1`
 echo "$valor-64" | bc
}

inicioProgram=`date +%T`
curl https://projecteuler.net/project/resources/p022_names.txt -O 
(cat ~/Documentos/Bash/ejerciciosProyectoDeEuler/Ejercicio022/p022_names.txt | tr "," "\n" | tr -d " \" " | sort | nl -w 1 -s " ") > nombres.txt
totalestudiantes=`cat nombres.txt | cut -d " " -f 1 | tail -1`
totalPuntaje=0
for ((i=1; i<=$totalestudiantes; i++))
do
 nombre=`cat nombres.txt | head -$i | tail -1 | cut -d " " -f 2`
 #numeroOrden=`cat nombres.txt | head -$i | tail -1 | cut -d " " -f 1`
 contadorCaracteres=1
 sumaCaracteres=0
 while (( $contadorCaracteres <= ${#nombre} ))
 do
 char=`echo $nombre | cut -c$contadorCaracteres-$contadorCaracteres` 
 valorAscii=`numPosicion $char`
 ((sumaCaracteres=$sumaCaracteres+$valorAscii))
 ((contadorCaracteres++))
 done
 ((totalPuntaje=$totalPuntaje+$sumaCaracteres*$i))
done
 echo "$totalPuntaje"
finProgram=`date +%T`
echo -e "\t inicio de ejecucion: $inicioProgram \t final de ejecucion: $finProgram " 
