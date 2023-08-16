#! /bin/bash

# reading File '10NamesToRead'

FILE_PATH="./10NamesToRead.txt"

# using for loop
for name in $(cat $FILE_PATH)
do    
    echo "Name is $name"
done  
echo

# using While loop
while read myVar
do    
    echo "Value from file is $myVar"
done < 10NamesToRead.txt

# reading content from csv file 
echo -e "\nCSv file reading Using While loop"
while IFS="," read f1 f2 f3
do    
    echo "${f1} ${f2} ${f3}" 
done < 10Test.csv  

echo -e "\nWithout first line"
#same above loop can also be written as
cat 10Test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do    
    echo "${id} ${name} ${age}" 
done
