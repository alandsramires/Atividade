#!/bin/bash

chama(){ echo "Digite um numero:"
}

chama
read N1
chama 
read N2

if (( N1 > N2 )); then
	MAIOR=$N1
	MENOR=$N2
else
	MAIOR=$N2
	MENOR=$N1
fi
let CONT=($MAIOR-$MENOR)
let RES=($MENOR+$CONT)
while [ $RES < $MAIOR ]; do

done

