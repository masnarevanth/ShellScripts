#!/bin/bash
#script to user and paswd creation

user=myuser
pass='date|md5sum|cut -c 1-7'
echo "adding a user $user"
useradd $user
echo "$user created sucessfully"
echo $pass|passwd $user --stdin
echo "user $user password set sucessfully"
chage -d0 $user
echo -e "user=$user\npassword=$pass"
