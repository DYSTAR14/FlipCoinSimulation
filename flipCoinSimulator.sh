#!/bin/bash -x
headWins=0
tailWins=0
count=0
while [[ $count -lt 10 ]]
do
	coin=$((RANDOM%2))
	count=$(($count+1))
	if [ $coin -eq 0 ]
	then
		headWins=$((headWins+1))
	else
		tailWins=$((tailWins+1))
	fi
done
echo Heads Wins : $headWins
echo Tails Wins : $tailWins
