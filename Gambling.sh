#!/bin/bash -x

echo "*********************Gambling*************************"
#start with stake of 100 ans bed by 1

# Constant variable
STAKE=100
BET=1
IS_WIN=1
cash=$STAKE
function playGame()
{
	result=$((RANDOM%2))
	#Check win or loss

	if [[ $result -eq $IS_WIN ]]
	then 
		cash=$(( $cash + $BET ))
		echo "1"
	else
		cash=$(( $cash - $BET ))
		echo "0"
	fi
}
playGame
# Win or lost 50 %
while [[ $cash -lt 150 && $cash -gt 50 ]]
do 
	playGame
done

# print win or loose after 20 days playing
for (( index=1; index<=20; index++ ))
do 
	bet=$( playGame )
	if [ $bet -eq $IS_WIN ]
	then	
		printf "you win 1 And your total stack is : $cash"
	else
		printf "you loose 1 And your total stack is : $cash"
	fi
done
