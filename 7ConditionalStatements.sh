#! /bin/bash

read -p "Enter your marks : " marks

if [[ $marks -ge 80 ]]
then 
	echo "First division :) !"
elif [[ $marks -ge 60 ]]
then
	echo "Second division"
elif [[ $marks -ge 35 ]]
then	
	echo "Third division"
else
	echo "You are failed!!!!!!"
fi

<< "###"
equal : -eq / ==
greaterThanOrEqualTo : -ge
lessThanOrEqualTo : -le
notEqual : -ne / !=
greaterThan : -gt
lessThan : -lt 

###
