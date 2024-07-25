#!/bin/bash
#script to convert mem status into %

TOTAL=`free -m |awk '/mem/ {print $2}'`
USED=`free -m |awk '/mem/ {print $3}'`
FREE=`free -m |awk '/mem/ {print $4}'`
echo "total mem = $TOTAL MB"
echo "used mem = $(($USED*100/$TOTAL)) % "
echo "free mem = $(($FREE*100/TOTAL)) % "
