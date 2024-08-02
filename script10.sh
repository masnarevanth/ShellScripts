#!/bin/bash
#script to check service is active

ser=`systemctl status vsftpd`
if [ "$ser" = "active" ] ; then
	echo "vsftpd is active"
else
	echo "service is not running"
	read -p "do you want to start the service [Y/N]: " OP
	if [ "$OP" = "Y" ] ; then
		systemctl start vsftpd
		echo "systemctl started vsftpd service"
	fi
	
fi


