#!/bin/bash
#script to do  case statement

mem()
{
read -p "select an function [free-space/mem-details/cpu-info/exit]: " stats
case $stats in
	free-space)du -h ;;
	mem-details)df -h ;;
	cpu-info)top ;;
	exit)exit ;;
	*)echo -e "\e[31mInvalid option  selected\e[0m" ;;
esac
mem
}
mem
