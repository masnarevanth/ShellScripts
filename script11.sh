#!/bin/bash
#script to do calci by using function with if command

calc()
{
read -p "seleect an operator[ADD|SUB|MUL|DIV|EXIT]: " op
if [ "$op" = "ADD" ] ; then
	echo "Add=$(($a+$b))"
fi

if [ "$op" = "SUb" ] ; then
	echo "Sub=$(($a-$b))"
fi

if [ "$op" = "Mul" ] ; then
	echo "mul=$(($a*$b))"
fi

if [ "$op" = "Div" ] ; then
	echo "div=$(($a/$b))"
fi

if [ "$op" = "EXIT" ] ; then
	echo -e "\e[33mExiting the script\e[0m"
	exit
fi

calc
}


read -p "give the value of a: " a
if [ -z "$a" ] ; then
	echo "invalid input"
	exit
fi

read -p "give the value of b: " b
if [ -z  "$b" ] ; then
	echo "invalid input"
	exit
fi
calc

