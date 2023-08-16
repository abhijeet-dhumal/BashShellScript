#! /bin/bash

#printing numbers from 1 to 10
for i in 1 2 3 4 5 6 7 8 9 10
do    
    echo -n "$i "
done     
echo
#=> 1 2 3 4 5 6 7 8 9 10

# same for loop can also be written as
for i in {1..10}
do    
    echo -n "$i "
done     
echo
#=> 1 2 3 4 5 6 7 8 9 10


for i in Abhijeet Arun Dhumal
do    
    echo -n "$i "
done
echo 
#=>Abhijeet Arun Dhumal

num=10
count=0
# run until this condition becomes false
while [[ count -le num ]]
do    
    echo -n "$count "
    let count++
done 
echo
#=> 0 1 2 3 4 5 6 7 8 9 10

#Until loop - run until this condition becomes true
a=10
until [[ $a -eq 0 ]]
do    
    echo -n "$a "
    let a--
done   
echo
#=> 10 9 8 7 6 5 4 3 2 1


#Infinite Loop
# while true 
# do  
#     echo -n "Hii Buddy "
#     sleep 2s
# done 

for (( ;; ))
do   
    echo -n "hii buddy! "
    sleep 2s
done

<< output

1 2 3 4 5 6 7 8 9 10
1 2 3 4 5 6 7 8 9 10
Abhijeet Arun Dhumal
0 1 2 3 4 5 6 7 8 9 10
10 9 8 7 6 5 4 3 2 1
hii buddy! hii buddy! hii buddy! ^C

(type ^C to terminate this code file execution)
output