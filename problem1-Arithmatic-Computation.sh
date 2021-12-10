#!/bin/bash

read -p "Enter The First Number :-  " a

read -p "Enter The Second Number :-  " b

read -p "Enter The Thired Number:-  " c

echo ""
echo ""


arr[0]=$(( (a+b)*c ))
arr[1]=$(( (a*b)+c ))
arr[2]=$(( (c+a)/b ))
arr[3]=$(( (a%b)+c ))


echo "Readed All Computed Values Using Dictionary Are As Follows;"

echo "01. A + B * C :- ${arr[0]}"
echo "02. A * B + C :- ${arr[1]}"
echo "03. C + A / B :- ${arr[2]}"
echo "04. A % B + C :- ${arr[3]}"
echo " "
echo " "



#"Sorting array For Descending Order "

for ((i = 0; i<5; i++))
do
	for((j = 0; j<5-i-1; j++))
	do
		if [[ ${arr[j]} -lt ${arr[$(($j+1))]} ]]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$(($j+1))]}
			arr[$(($j+1))]=$temp
		fi
	done
done


echo "Sorted Result in Descending Order Are As FOllows :-  ${arr[@]}"
echo ""
echo ""



#"Sorting Array For Ascending Order"

for ((i = 0; i<5; i++))
do
	for((j = 0; j<5-i-1; j++))
	do
		if [[ ${arr[j]} -gt ${arr[$(($j+1))]} ]]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$(($j+1))]}
			arr[$(($j+1))]=$temp
		fi
	done
done


echo "Sorted Result in Ascending Order Are As FOllows :-  ${arr[@]}"
echo ""
echo ""



echo "Thank You"
