#!/bin/bash
classlist="$1"
username="$2"
if [ $# -ne 2 ]
then
	echo "error : no. of arguments should be 2"
	exit 1
fi
if [ ! -e "$1" ]
then
	echo "file $1 does not exist."
	exit 1
fi
f=`grep -i "$2" "$1" | wc -l`
if [ $f -eq 0 ]
then
	echo $username >> $classlist
	cat $classlist
else
	echo "username already exists.."
	cat $classlist
fi
