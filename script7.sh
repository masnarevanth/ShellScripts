#!/bin/bash
#script to do  case statement

read -p "select an OS [Unix/Linux]: " OS
case $OS in
	Unix)uname -a ;;
	Linux)pwd ;;
	*)echo -e "\e[31mInvalid OS selected\e[0m" ;;
esac
