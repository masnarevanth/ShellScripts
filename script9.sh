#!/bin/bash
#script to use simple if
read -p "give file path: " file
if [ -e $file ] ; then
	echo "$file exists"
fi


