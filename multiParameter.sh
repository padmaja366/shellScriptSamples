#!/bin/bash
#checking passing multiple parameter using $* and S@
count=1
echo "using \$*"
for param in "$*"
do 
	echo "\$* set parameter #$count: $param"
       count=$[ $count+1 ]
done
echo "using \$@"
count=1
for param in "$@"
do
	echo "\$@ set parameter #$count: $param"
	count=$[ $count+1 ]
done
