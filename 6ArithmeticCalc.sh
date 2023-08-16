#! /bin/bash

#Maths Calculations
x=10
y=2

<<'###'
mul=$x*$y

echo "$mul" 
=> 10*2
but we want calculated value, here we can use let keyword
###

let mul=$x*$y
#echo "$mul"
#=> 20 

#similarly
let sum=$x+$y
#echo "$sum"
#=> 12

# this same syntax can also be written as
#echo "$(($x+$y))"
#=> 12

# Game : taking random number between 1 to 100
number=$(( $RANDOM % 100 + 1 ))

echo "Guess a number between 1 and 100"

guess=0
i=0
while [ "0$guess" -ne $number ] ; do
        read -p "Enter your guess : " guess
        [ "0$guess" -lt $number ] && echo "Too low"
        [ "0$guess" -gt $number ] && echo "Too high"
        ((i=i+1))
        echo try#: $i
        echo
done

echo "That's right!"
exit 0
