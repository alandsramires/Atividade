#!/bin/bash
clear
echo "Você selecionou o exercicio 3"

sleep 1
sal=1
while (( $sal != 0 )); do
  echo -n "Informe o salario a ser calculado: "
  read sal
	num=$sal
		if (( $num <= 500)); then
			echo -n "Salário com reajuste de 20%: R$ "
			echo "scale=2; $num+$num*20/100" | bc
			echo
				else
	   				 if (( $num > 500 )); then
	       					echo -n "Salário com reajuste de 10%: R$ "
					        echo "scale=2; $num+$num*10/100" | bc
						echo	
	   				 fi
		fi

done
