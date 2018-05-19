#!/bin/bash
lines ()
{
echo input a file
read file
if [ -f $file ]
then
	echo $file is a File present
fi
linesc=`cat $file|wc -l`
return $linesc
}
lines
echo "number of lines present is $?"
