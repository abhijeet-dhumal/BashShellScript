#! /bin/bash

read -p "Which site you want to check connectivity for : "  site
ping -c 1 $site

if [[ $? -eq 0  ]]
then 
	echo "Successfully pinged!"
else
	echo "data lost!"
fi

echo -ne "\nExit status : " 
echo $?
echo
