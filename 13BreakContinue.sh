#! /bin/bash

<< NoteBlock

break - to stop loop
continue - to stopcurrent iteration of loop and start next iteration
sleep - to create delay between 2 executions : sleep 1s/1m
exit - to stop script at a point
(exit status) $? - gives status of previous command if that was successful

NoteBlock

#to check if num is in sequence
num=6
arr=( 1 2 3 4 5 6 7 8 9)
for i in "${arr[@]}"; do
    # to avoid check for odd numbers- 
    # use continue to avoid further code execution in loop block
    let mod=$i%2
    if [[ $mod -eq 1 ]]; then
        continue
    fi
    # break loop if num found
    if [[ $i -eq $num ]]; then
        echo "$num found in array ( ${arr[@]} ) "
        break
    fi
    echo "Num is $i"
done        

<< outputBlock

Num is 2
Num is 4
6 found in array ( 1 2 3 4 5 6 7 8 9 )

outputBlock

