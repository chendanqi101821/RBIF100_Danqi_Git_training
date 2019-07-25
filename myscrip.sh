#!/bin/bash
# myscript.sh

echo $1
for i in {1..9}
	do 
	touch $1$i.txt
	test -e $1$i.txt
	var=$( echo $? )
	echo $var
	if [ $var -eq 0 ]
	then
		echo "$1$i exist"
	fi
done

