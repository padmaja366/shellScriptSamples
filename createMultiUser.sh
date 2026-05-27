#!/bin/bash
#creating multiple users from the testUsername.csv file
inputFile=testUsername.csv
while IFS=',' read -r userid username
do
	echo "adding $userid"
	sudo useradd -c "$username" -m $userid
done < $inputFile
