#!/bin/bash
#input outputs and errors
exec 3>&1
exec 1>testout
echo "this is going to the testout file"
echo "line number 1"
exec 1>&3
echo "this will be printed on the monitor lol!!"


exec 6<&0
exec 0<testerror
count=1
while read line
do
	echo "line number #$count"
	count=$[ $count+1 ]
done
exec 0<&6
echo "they will be taking input from the script"
read -p "enter Y or N: " answer
case $answer in
	y|Y)
		echo "thanks for selection Y. How can i help you?";;
	n|N)
		echo "Ok Bye!"
		exit;;
esac
