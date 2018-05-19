#!/bin/bash
echo Input value of First number:
read var1
echo Input value of Second number
read var2
echo "+: `expr $var1 + $var2`"
echo "- `expr $var1 - $var2`"
echo "* `expr $var1 \* $var2`"
echo "/ `expr $var1 / $var2`"
echo "% `expr $var1 % $var2`"
((var1--))
echo $var1
((var1++))
echo $var1
