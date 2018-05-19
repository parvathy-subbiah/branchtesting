#!/bin/bash
mkdir /tmp/continue3/ > /dev/null 2>&1
for i in /root/*
do
if [ ! -r $i ]
then 
	
	echo file is not in readable format -> $i with error code and error message 1>&2
	continue
	
fi
cp -r $i /tmp/continue3/
done 
