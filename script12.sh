#!/bin/bash
#script to do calci by using function with if command

calc()
{
read -p "seleect an operator[ADD|SUB|MUL|DIV|EXIT]: " op
if [ "$op" = "ADD" ] ; then
	echo "Add=$(($a+$b))"

elif [ "$op" = "SUb" ] ; then
	echo "Sub=$(($a-$b))"

elif [ "$op" = "Mul" ] ; then
	echo "mul=$(($a*$b))"

elif [ "$op" = "Div" ] ; then
	echo "div=$(($a/$b))"

elif [ "$op" = "EXIT" ] ; then
	echo -e "\e[33mExiting the script\e[0m"
	exit
else
	echo -e "\e[31minvalid operator selected..\e[0m"
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

