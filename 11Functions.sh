#! /bin/bash

function myfun {
    echo "-------------------"
    echo "hello"
    echo "----------------"
}
myfun
myfun

<< output
=>>
-------------------
hello
----------------
-------------------
hello
----------------
output

#sum of 2 numbers
mySum(){
    echo "First argument: $1"
    echo "Second argument: $2"
    
    echo $(($1+$2))
}
mySum 12 13

<< output
=>>
First argument: 12
Second argument: 13
25
output

echo 

# To create calculator frame
myCalculator(){
    echo "Number of arguments: $#"
    echo "All arguments : $@"
    echo "$1$2$3 = $(($1 $2 $3))"
}
myCalculator 15 % 12

<< output
Number of arguments: 3
All arguments : 15 % 12
15%12 = 3
output