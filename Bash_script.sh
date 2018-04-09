#!/bin/bash

#echo finding all files with "validate"
#cd /mnt/c/bashexp
#ls
# grep "validate" -rin --include=*.{c,h} 

#Aziz=30
#echo $Aziz

#echo $0
#echo $1
#echo $2

#all_dirs=`ls`
#echo $all_dirs

i=5
test=0

read=i
echo $i


if [ $i \< 9 ]
then
echo "Hurray"
else
echo "Oh no"
fi

#for test in {\=1..5} 
#do
#done

while [ $test \< 4 ]
do
echo $i
((test++))
done

