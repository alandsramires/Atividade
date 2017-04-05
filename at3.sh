#!/bin/bash
clear
echo "Você selecionou o exercicio 3"
sleep 1
sal=1
while (( $sal != 0 )); do
  echo -n "Informe o salario a ser calculado: "
  read sal
	if (( $sal >= 1 || $sal <= 500 )); then
	let sal=($sal*1,2)
	  if (( $sal > 500 )); then
	  let sal=($sal*1,1)
	 
	  
	  fi
	fi
  echo Salario atual: $sal
done
