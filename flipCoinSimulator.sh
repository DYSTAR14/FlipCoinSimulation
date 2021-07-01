#!/bin/bash -x
headWins=0
tailWins=0
count=1
while [[ $count -le 21 ]]
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
if [ $headWins -eq $tailWins ];then
	echo "No one Won it's TIE"
elif [ $headWins -gt $tailWins ];then
	val=$(($headWins-$tailWins))
	echo "Heads Wins by "$val" Value"
elif [ $headWins -lt $tailWins ];then
	val=$(($tailWins-$headWins))
   echo "Tails Wins by "$val" Value"
fi
