#! /bin/bash

# generating a random number from 1 to 6
num=$(( $RANDOM % 6 + 1 ))
echo "Dice number : $num"

<< OutputBlock

Dice number : 3

OutputBlock
