#! /bin/bash

myArray=( 1 20 30.5 Hello "Hey Buddy!" ) 
#Array with space separated values
# to print 4th element - where indexing starts with zero
echo "4th index element : ${myArray[4]}"
#=> 4th index element : Hey Buddy!

#to print all values
echo "All elements : ${myArray[*]}" #=> All elements : 1 20 30.5 Hello Hey Buddy!

# To get length of an array
echo "Length of array : ${#myArray[*]}" #=> Length of array : 5

#Array slicing - myArray[*]:StartingIndex : NumberOfElements
echo "Array elements from 2 and next 2 elements : ${myArray[*]:2:2}" 
#=> Array elements from 2 and next 2 elements : 30.5 Hello

# defining Associate array with keyValue pairs
declare -A dictArray
dictArray=([name]=Abhi [age]=21)
echo "${dictArray[*]}" #=> 20 Abhi
echo "${dictArray[name]}" #=> Abhi
#=> String slice from Index 4 and next 5 chars : buddy

echo -e "\nAll Associate array values are : "
# to iterate through associate array
for key in "${!dictArray[@]}"
do    
    echo "key : $key, Value : ${dictArray[$key]}"
done    
