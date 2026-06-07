#!/bin/bash
#creating tmp files using mktemp
filename=/tmp/*
for file in $filename
do
	if [ -d $file ]
	then
		echo "$file is a directory"
	else
		echo "$file is not a directory"
		echo "checking if $file is empty..."
		if [ -s $file ]
		then
			echo "$file is not empty"
			echo
		else
			echo "$file is empty"
			echo "removing the file..."
			rm -rf $file
			echo
		fi
	fi
done
