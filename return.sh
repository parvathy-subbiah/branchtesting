#!/bin/bash
function input()
{
echo Input the filename to check if present or not !
read fname
}
function returnusage()
{
input
if [ -f $fname ]
then
	echo file present
	return 0
else
	echo $fname not present
	return 2
fi
}
returnusage
echo "program status code --> $?"
