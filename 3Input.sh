#! /bin/bash

#read data form command prompt
read -p "Enter your name : " NAME #=> Enter your name : Abhijeet
read -p "Enter your favourite sport : " SPORT #=> Enter your favourite sport : Cricket

echo -e "\nFormed Sentence : My name is '${NAME}' and I play '${SPORT}'"
#=> Formed Sentence : My name is 'Abhijeet' and I play 'Cricket'