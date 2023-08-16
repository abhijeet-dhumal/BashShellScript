#! /bin/bash

# reading File '10NamesToRead'

FILE_PATH="./10NamesToRead.txt"

# using for loop
for name in $(cat $FILE_PATH)
do    
    echo "Name is $name"
done  
echo

# using While loop to read file
while read myVar
do    
    echo "$myVar"
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

<< output

Name is Akshay
Name is Dhumal
Name is Mahesh
Name is Mahajan
Name is Ajay
Name is Jagtap

Akshay Dhumal
Mahesh Mahajan
Ajay Jagtap

CSv file reading Using While loop
id name age
1 abhi 21
2 akshay 22

Without first line
1 abhi 21
2 akshay 22

output