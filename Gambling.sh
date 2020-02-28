#!/bin/bash -x

echo "*********************Gambling*************************"
#start with stake of 100 ans bed by 1

# Constant variable
STAKE=100
BET=1

result=$((RANDOM%2))
#Check win or loss

if [[ $result -eq 1 ]]
then 
	stake=$(( $stake + 1 ))
	echo Win $stake
else
	stake=$(( $stake -1 ))
	echo Loose $stake
fi
