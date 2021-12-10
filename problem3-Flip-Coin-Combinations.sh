#!/bin/bash

result=$((RANDOM%2+1))

Tail=1
Head=2

headcount=0
tailcount=0

if [[ $result -eq 2 ]]
then
	echo "UC-1:- It's Heads"

elif [[ $result -eq 1 ]]
then
	echo "UC-1:- It's Tails"
fi

echo ""

declare -A uc1
count=1

loop=$((RANDOM%900+100))

while [[ $count -le $loop ]]
do
	count=$(($count+1))
	result=$((RANDOM%2+1))

	uc1[$count]=$result
done

for (( i=0;i<$loop;i++ ))
do
	if [[ ${uc1[$i]} -eq 2 ]]
	then
		headcount=$(($headcount+1))

	elif [[ ${uc1[$i]} -eq 1 ]]
	then
		tailcount=$(($tailcount+1))
	fi

done


headavg=$( echo | awk '{print '$headcount/$loop*100'}')
tailavg=$( echo | awk '{print '$tailcount/$loop*100'}')

singlet=( [0]=$headavg [1]=$tailavg )

echo "UC-02 Singlet Combination Percentage"

echo "Head Count is $headcount From $loop & Average Is :- $headavg %"
echo "Tail Count is $tailcount From $loop & Average Is :- $tailavg %"

echo ""
echo ""


declare -A uc2
count=1

hh=0
ht=0
th=0
tt=0

loop=$((RANDOM%900+100))

while [[ $count -le $loop ]]
do
        result=$((RANDOM%13+10))

	if [[ $result -eq 11 || $result -eq 12 || $result -eq 21 || $result -eq 22 ]]
	then
		uc2[$count]=$result
		count=$(($count+1))
	fi

done

for (( i=0;i<$loop;i++ ))
do
        if [[ ${uc2[$i]} -eq 22 ]]
        then
                hh=$(($hh+1))

        elif [[ ${uc2[$i]} -eq 21 ]]
        then
                ht=$(($ht+1))

	elif [[ ${uc2[$i]} -eq 12 ]]
        then
                th=$(($th+1))

        elif [[ ${uc2[$i]} -eq 11 ]]
	then
                tt=$(($tt+1))
	fi
done


hhavg=$( echo | awk '{print '$hh/$loop*100'}')
htavg=$( echo | awk '{print '$ht/$loop*100'}')
thavg=$( echo | awk '{print '$th/$loop*100'}')
ttavg=$( echo | awk '{print '$tt/$loop*100'}')

doublet=( [0]=$hhavg [1]=$htavg [2]=$thavg [3]=$ttavg )


echo "UC-03 Doublet Coin Flip Combinations Are :- "

echo "Head & Head Combination Count is $hh From $loop & Average Is :- $hhavg %"
echo "Head & Tail Combination Count is $ht From $loop & Average Is :- $htavg %"
echo "Tail & Head Combination Count is $th From $loop & Average Is :- $thavg %"
echo "Tail & Tail Combination Count is $tt From $loop & Average Is :- $ttavg %"

echo ""
echo ""


declare -A uc3
count=1

hhh=0
hht=0
hth=0
htt=0

ttt=0
tth=0
tht=0
thh=0

loop=$((RANDOM%900+100))

while [[ $count -le $loop ]]
do
        result=$((RANDOM%120+110))

        if [[ $result -eq 222 || $result -eq 221 || $result -eq 212 || $result -eq 211 || $result -eq 111 || $result -eq 112 || $result -eq 121 || $result -eq 122 ]]
        then
                uc3[$count]=$result
                count=$(($count+1))
        fi

done

for (( i=0;i<$loop;i++ ))
do
        if [[ ${uc3[$i]} -eq 222 ]]
        then
                hhh=$(($hhh+1))

        elif [[ ${uc3[$i]} -eq 221 ]]
        then
                hht=$(($hht+1))

        elif [[ ${uc3[$i]} -eq 212 ]]
        then
                hth=$(($hth+1))

        elif [[ ${uc3[$i]} -eq 211 ]]
        then
                htt=$(($htt+1))

	elif [[ ${uc3[$i]} -eq 111 ]]
        then
                ttt=$(($hhh+1))

        elif [[ ${uc3[$i]} -eq 112 ]]
        then
                tth=$(($hht+1))

        elif [[ ${uc3[$i]} -eq 121 ]]
        then
                tht=$(($hth+1))

        elif [[ ${uc3[$i]} -eq 122 ]]
        then
                thh=$(($htt+1))
        fi
done


hhhavg=$( echo | awk '{print '$hhh/$loop*100'}')
hhtavg=$( echo | awk '{print '$hht/$loop*100'}')
hthavg=$( echo | awk '{print '$hth/$loop*100'}')
httavg=$( echo | awk '{print '$htt/$loop*100'}')

tttavg=$( echo | awk '{print '$ttt/$loop*100'}')
tthavg=$( echo | awk '{print '$tth/$loop*100'}')
thtavg=$( echo | awk '{print '$tht/$loop*100'}')
thhavg=$( echo | awk '{print '$thh/$loop*100'}')

triplet=( [0]=$hhhavg  [1]=$hhtavg [2]=$hthavg [3]=$httavg [4]=$tttavg [5]=$tthavg [6]=$thtavg [7]=$thhavg )

echo "UC-04 Triplet Combination Percentage"

echo "Head & Head & Head Combination Count is $hhh From $loop & Average Is :- $hhhavg %"
echo "Head & Head & Tail Combination Count is $hht From $loop & Average Is :- $hhtavg %"
echo "Head & Tail & Head Combination Count is $hth From $loop & Average Is :- $hthavg %"
echo "Head & Tail & Tail Combination Count is $htt From $loop & Average Is :- $httavg %"

echo "Tail & Tail & Tail Combination Count is $ttt From $loop & Average Is :- $tttavg %"
echo "Tail & Tail & Head Combination Count is $tth From $loop & Average Is :- $tthavg %"
echo "Tail & Head & Tail Combination Count is $tht From $loop & Average Is :- $thtavg %"
echo "Tail & Head & Head Combination Count is $thh From $loop & Average Is :- $thhavg %"

echo ""
echo ""



#"sorting and printing"

for ((i=0;i<=${#singlet[@]};i++))
do
        for (( j=$(($i+1)); j<${#singlet[@]}; j++))
                do
                        if [[ ${singlet[i]} > ${singlet[j]} ]]
                        then
                                var=${singlet[i]}
                                array[$i]=${singlet[j]}
                                array[$j]=$var
                        fi
                done
done

echo "1. Singlet Toss Sorted Combination Is :- ${singlet[@]}"
echo "Maximum Is $singlet[$1]"



for ((i=0;i<=${#doublet[@]};i++))
do
        for (( j=$(($i+1)); j<${#doublet[@]}; j++))
                do
                        if [[ ${doublet[i]} > ${doublet[j]} ]]
                        then
                                var=${doublet[i]}
                                array[$i]=${doublet[j]}
                                array[$j]=$var
                        fi
                done
done

echo "2. Doublet Toss Sorted Combination Is :- ${doublet[@]}"
echo "Maximum Is $doublet[1]"



for ((i=0;i<=${#triplet[@]};i++))
do
        for (( j=$(($i+1)); j<${#triplet[@]}; j++))
                do
                        if [[ ${triplet[i]} > ${triplet[j]} ]]
                        then
                                var=${triplet[i]}
                                array[$i]=${triplet[j]}
                                array[$j]=$var
                        fi
                done
done

echo "Triplet Toss Sorted Combination Is :- ${triplet[@]}"
echo "Maximum Is $triplet[$1]"

