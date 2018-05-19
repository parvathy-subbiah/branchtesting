#!/bin/bash
echo what arithmetic operation do u want to do ?
echo 1 -> add 2 -> subtract 3 -> multiply 4 -> divide
echo please press 1 / 2 / 3 / 4
read input
echo input first number
read num1
echo input 2nd number
read num2
case $input in 
1)
	echo "`expr $num1 + $num2`"
	;;
2)
	echo "`expr $num1 - $num2`"
	;;
3)
	echo "`expr $num1 \* $num2`"
	;;
4)
	echo "`expr $num1 / $num2`"
	;;
*)
	echo "Number pressed than than 1 to 4"
	;;
esac

