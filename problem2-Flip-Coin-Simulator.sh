#!/bin/bash

result=$((RANDOM%2))

Head=0
Tail=1

headcount=0
tailcount=0

if [[ $result -eq 0 ]]
then
	echo "UC-1:- It's Heads"

elif [[ $result -eq 1 ]]
then
	echo "UC-1:- It's Tails"
fi


for (( i=0;i<21;i++ ))
do
	result2=$((RANDOM%2))

	if [[ $result2 -eq 0 ]]
	then
		headcount=$(($headcount+1))

	elif [[ $result2 -eq 1 ]]
	then
		tailcount=$(($tailcount+1))

	fi
done

if [[ $headcount -eq $tailcount ]]
then
	for (( i=0;i<3;i++ ))
	do
        	result2=$((RANDOM%2))

        	if [[ $result2 -eq 0 ]]
        	then
                	headcount=$(($headcount+1))

        	elif [[ $result2 -eq 1 ]]
        	then
                	tailcount=$(($tailcount+1))

        	fi
	done

fi


if [[ $headcount -gt $tailcount ]]
then
	echo "UC-02 & 03 :- Head Wins $headcount Out Of 21"

elif [[ $tailcount -gt $headcount ]]
then
	echo "UC-02 & 03 :- Tail Wins $tailcount Out Of 21"

fi


echo "Thank You"
