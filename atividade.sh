#!/bin/bash
escolha=0
while (( escolha != 6 )); do
  clear
  echo "Atividade Fundamentos de Programação"
  sleep 1
  echo "Selecione o exercicio desejado para executá-lo:"
  echo
  echo "1) Exercicio 1 - "
  echo "2) Exercicio 2 - "
  echo "3) Exercicio 3 - "
  echo "4) Exercicio 4 - "
  echo "5) Exercicio 5 - "
  echo "6) Sair"
  read escolha

###############   ATIVIDADE 1   ############### 

	if (( escolha = 1)); then

		clear

		echo "Você selecionou o exercicio 1"
		sleep 1

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
	fi
 
##############   ATIVIDADE 2   ############### 

	if (( escolha = 2 )); then

		echo "Você selecionou o exercicio 2"
		sleep 1

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
	fi

##############   ATIVIDADE 3   ############### 

	if ((escolha = 3 )); then

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


	fi

##############   ATIVIDADE 4   ############### 

	if (( escolha = 4 )); then
		echo "Você selecionou o exercicio 4"
		sleep 1
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
	fi

##############   ATIVIDADE 5   ############### 

	if ((escolha = 5 )); then

		echo "Você selecionou o exercicio 5"
		sleep 1

		DIG=1; PRI=0; SEG=0; TER=0;
		clear
		while [ $DIG != 0 ]; do
   			echo "Digite o salario:"
	   		read DIG
	   		SAL=$DIG
	   		[ $SAL == $PRI ] &&  SAL=0
	   		[ $SAL == $SEG ] &&  SAL=0
			   	if (( $SAL > $PRI )); then
	   				TER=$SEG
					SEG=$PRI
					PRI=$SAL
				   	else
					if (( $SAL > $SEG )); then
						TER=$SEG
						SEG=$SAL
						else 
							if (( $SAL >= $TER )); then
							TER=$SAL
							fi
					fi
				fi
		done
		echo "Os maiores salario respectivamente sao: $TER; $SEG e $PRI"				
		echo "5"
	fi


done
