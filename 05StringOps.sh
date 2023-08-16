#! /bin/bash

myStr="Hey buddy!, How are you.."
myStrLength=${#myStr}
echo "Length of myStr : $myStrLength" #=> Length of myStr : 25

# converting to uppercase/lowercase
echo "UpperCase : ${myStr^^}" #=> UpperCase : HEY BUDDY!, HOW ARE YOU..
echo "Lowercase : ${myStr,,}" #=> Lowercase : hey buddy!, how are you..

# To replace a string
newStr=${myStr/buddy/bro}
echo "NewStr : $newStr" #=> NewStr : Hey bro!, How are you..

# To slice a string
echo "String slice from Index 4 and next 5 chars : ${myStr:4:5}"
