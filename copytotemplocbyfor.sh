#!/bin/bash
echo enter the source location 
read location
echo enter the file format to be moved
read format
echo enter the destination location
read destination_loc
#test -d $destination_loc
#r=`echo $?`
if [ ! -d $destination_loc ]
then 
	mkdir $destination_loc
	cp $location/*.$format $destination_loc
elif [ -d $destination_loc ]
then
	cp $location/*.$format $destination_loc
else
	echo Kindly provide the absolute source and destination path
fi
 

