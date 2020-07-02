#!/bin/bash

#read the values from user

read -p "enter the first number:- " a;
read -p "enter the second number:- " b;
read -p "enter the third number:- " c;

# Compute operations 

result1=$(( $a+$b*$c ))
result2=$(( $a*$b+$c ))
result3=$(( $c+$a/$b ))
result4=$(( $a%$b+$c ))
echo $result1
echo $result2
echo $result3
echo $result4

#Declare dictionary

declare -A resultDict

#store the Operations into the dictionary

resultDict[count1]=$result1
resultDict[count2]=$result2
resultDict[count3]=$result3
resultDict[count4]=$result4

echo "Operations storing into the dictionary : ${resultDict[@]}"
count=0

#sorting dictonary values into array

for i in "${resultDict[@]}"
do

	arr[((count++))]=$i
done

#Print the array

echo "Array is ${arr[@]}"

#sorting the computational values ascending order

for((i=0;i<4;i++))
do
	for((j = 0; j<4-i-1; j++))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done

echo "Sorted Array in ascending order ${arr[*]}"

#sorting the computational values in decending order

for((i=0;i<4;i++))
do
	for((j = 0; j<4-i-1; j++))
	do
		if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done

echo "Sorted Array in decending order ${arr[*]}"
