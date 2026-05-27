#!/bin/bash
#deleting user created from the testUsername.csv file
input="testUsername.csv"
while IFS=',' read -r userid username
do
	echo "deleting $userid"
	sudo userdel -r $userid
	echo "checking if user got deleted"
	cat /etc/passwd | grep $userid
done < $input
