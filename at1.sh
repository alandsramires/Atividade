#!/bin/bash
clear
	  echo "Você selecionou o exercicio 1"
#	  sleep 1
	  echo -n  "Digite o valor de um numero:"
	  read n1
	  echo -n "Digite o valor de um segundo numero:"
	  read n2
	  	if (( $n1 > $n2));then 
		  maior=$n1
		  menor=$n2
		  else
		  menor=$n1	
	          maior=$n2
		  fi
echo -n "Resultado impar do intervalo:"
while (( $maior > $menor )); do
let res=($menor%2)
	if (( $res != 0 ));then
	echo -n "$menor,"

	fi

let menor=($menor+1)
done
echo 
