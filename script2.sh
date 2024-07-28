#!/bin/bash
#script to convert mem status into %

TOTAL=`free -m |awk '/Mem/ {print $2}'`
USED=`free -m |awk '/Mem/ {print $3}'`
FREE=`free -m |awk '/Mem/ {print $4}'`

echo "total mem = $TOTAL MB"
echo "used mem = $(($USED*100/$TOTAL)) %"
echo "free mem = $(($FREE*100/$TOTAL)) %"
