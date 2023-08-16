#! /bin/bash

#Maths Calculations
x=10
y=2

<< commentBlock

mul=$x*$y

echo "$mul" 
=> 10*2
but we want calculated value, here we can use let keyword

commentBlock

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

<<OUTPUT

Guess a number between 1 and 100
Enter your guess : 65
Too high
try#: 1

Enter your guess : 45
Too high
try#: 2

Enter your guess : 35
Too high
try#: 3

Enter your guess : 20
Too high
try#: 4

Enter your guess : 5
Too low
try#: 5

Enter your guess : 10
Too high
try#: 6

Enter your guess : 6
Too low
try#: 7

Enter your guess : 7
Too low
try#: 8

Enter your guess : 8
Too low
try#: 9

Enter your guess : 9
try#: 10

That's right!

OUTPUT