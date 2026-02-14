#!/bin/bash

# IF COndition either this or that
# if -> then  -> else

a=10
b=20

if [ $a -gt $b ]; then
	echo "$a is bigger"
else 
	echo "$b is bigger"
fi

if [ $# -eq 0 ]
then
	echo "PLease pass a file as an argument"
	echo "Usage: ./checkif_file_exist.sh <file_path>"
	exit 1
fi

if [ -f $1 ]; then
	echo "File Exists"
else
	echo "File doesn't exist"
fi
