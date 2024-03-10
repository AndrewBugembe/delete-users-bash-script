#!/bin/bash


#variables to be used
NAME_OF_USER=$1
KEEP_DIR=K
REMOVE_DIR=R


#check for root or admin permissions

if [ $(id -u) -eq 0 ]
then
	echo "You are have the permission to delete users"
else
	echo "You need admin permission to use this script"
	exit 1
fi

#function to guide user on how to use the script
usage () {
echo "
Provide 2 arguments to use this script; name of user
and option to delete user's home directory or keep it"
echo " K = Keep directory and R = Remove directory"
echo " For example delete-users.sh sarah R"
}

#deleting user
#check required arguments are provided
if [ $2 == $REMOVE_DIR ]
then
	echo "You are right"
else
	echo "Wrong arg"
	usage
	exit 1
fi
