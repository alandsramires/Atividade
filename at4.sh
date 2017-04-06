#!/bin/bash
VAR=1
clear
echo "Você selecionou o exercicio 4"
sleep 1
valor(){ echo "Digite um valor:"
read VAR
}
valor
MENOR=$VAR
while (( $VAR != 0 )); do
	valor
	  if (( $VAR != 0 )); then
	  NUM=$VAR
	  if (( $NUM <= $MENOR )); then
	    if (( $NUM < $MENOR )); then
		  MENOR=$NUM
		  COUNT=1
		else
		   let COUNT=($COUNT+1)
	    fi
	  fi
	fi
done
echo -n "A menor variável digitada foi $MENOR e foi digitada"; let COUNT=($COUNT+1); echo " $COUNT vez(es)"
