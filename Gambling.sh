#!/bin/bash -x

echo "*********************Gambling*************************"
#start with stake of 100 ans bed by 1

# Constant variable
STAKE=100
BET=1
IS_WIN=1

function playGame()
{
	result=$((RANDOM%2))
	#Check win or loss

	if [[ $result -eq IS_WIN ]]
	then 
		STAKE=$(( $STAKE + $BET ))
	else
		STAKE=$(( $STAKE - $BET ))
	fi
}
playGame
# Win or lost 50 %
while [[ $STAKE -lt 150 && $STAKE -gt 50 ]]
do 
	echo "$STAKE"
	playGame
done

