#!/bin/bash
echo Input a variable to test :
read a
if [ $a -gt 100 ]
then
	if [ $((a % 2)) -eq 0 ]
	then
		echo "EVEN NUMBER -> $a"
	else
		echo "ODD NUMBER -> $a"
	fi
elif [ $a -lt 100 ] && [ $a -gt 50 ]
then
	echo "Ur number $a is less than 100 and greater than  50"
else 
	echo "$a is less than 50"
fi
