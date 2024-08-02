#!/bin/bash
#script to do calc by taking input using spl var

read -p "give a value: " a
read -p "give b value: " b

calc()
{
echo "add=$(($a+$b))"
echo "sub=$(($a-$b))"
}
calc
