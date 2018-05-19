#!/bin/bash
action='create remove copy  move list'
select a in $action
do
if [ $a = 'create' ]
then
	echo enter location  to create a folder
	read loc
	echo enter name of folder to be created
	read name
	if [ ! -d $a ]
	then
		mkdir $loc/$name
		ls -ltr $loc |grep $name
	else 
		echo "$loc/$name already present"
	fi
elif [ $a = 'remove' ]
then
        echo enter location  to delete  a folder
        read loc
        echo enter name of folder to be deleted
        read name
	rm -rf $loc/$name
	echo $loc/$name has been removed
elif [ $a = 'copy' ]
then
        echo enter source location  to copy  a folder
        read loc
        echo enter name of folder to be copied
        read name
	echo enter destination location
	read destination
	if [ ! -d $destination ]
        then 
                mkdir -p $destination
        fi
	cp -r $loc/$name $destination
	echo copied from $loc/$name to $destination
elif [ $a == 'move' ]
then
	echo enter location  to move a folder
        read loc
        echo enter name of folder to be moved
        read name
	echo enter destination location
        read destination
        mv $loc/$name $destination
	echo Ur $loc/$name has been moved to $destination
elif [ $a == 'list' ]
then
	echo enter location  to be listed
	read listt
	ls $listt
else
	echo option selected is not available !!!! Please select a different option
fi
done 

