#! /bin/bash

read -p "Which site you want to check connectivity for : "  site
ping -c 1 $site
echo -ne "\nExit status : " 
echo $?
echo