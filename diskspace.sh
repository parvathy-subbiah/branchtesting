#!/bin/bash
echo input source location
read source
echo input destination folder
read destination
mkdir -p $destination/backup2
space=`df $destination|tail -1|awk '{ print $5 }'|sed 's/%//'`
for i in $source/*
do
if [ $space -gt 1 ]
then
	echo space limit exceeded ! reached -> $space
	break
fi
cp -r $i $destination/backup2
done
