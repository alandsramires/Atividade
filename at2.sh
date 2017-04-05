#!/bin/bash
clear
	  echo "Você selecionou o exercicio 2"
#	  sleep 1
echo

cont=0
res=0
  echo -n  "Informe a quantidade de entradas que você deseja utilizar:"
  read entrada
while (( $entrada > $cont )); do
   echo "Digite um valor qualquer: "
   read n1
   if (( $n1 > $res )); then 
      	res=$n1
	  	
   fi
   let cont=($cont+1)
done	
echo "O maior valor digitado foi: $res"
