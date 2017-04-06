#!/bin/bash
escolha=0
while (( escolha != 6 )); do
  clear
  echo "Atividade Fundamentos de Programação"
#  sleep 1
  echo "Selecione o exercicio desejado para executá-lo:"
  echo
  echo "1) Exercicio 1 - "
  echo "2) Exercicio 2 - "
  echo "3) Exercicio 3 - "
  echo "4) Exercicio 4 - "
  echo "5) Exercicio 5 - "
  echo "6) Sair"
  read escolha

	if (( escolha = 1 )); then
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
	  let  intervalo=($maior-$menor)
	  echo $intervalo
	  read stop	
	fi
  
	if (( escolha = 2 )); then
	echo "2"
	fi
	
	if ((escolha = 3 )); then
	echo "3"
	fi

	if (( escolha = 4 )); then
	echo "4"
	fi

	if ((escolha = 5 )); then				
	echo "5"
	fi


done
