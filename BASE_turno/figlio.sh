#!/bin/bash

indice=$1
echo "inizia figlio indice ${indice}"

COUNT=0
NEXT=$(( ${indice}+1 ))
if [[ $NEXT -eq 3 ]] ; then
	NEXT=$(( $NEXT-3 ))
fi
while (( COUNT<3 )); do
	sleep 1
	if [[ -e "${indice}.txt" ]]; then
		rm "${indice}.txt" 
		touch "${NEXT}.txt"
		echo "${indice}"
		COUNT=$(( ${COUNT}+1 ))
	fi
done
if [[ $indice -eq 3  ]]; then
	rm 0.txt
fi

echo "figlio indice ${indice} finisce"
