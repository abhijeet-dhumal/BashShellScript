#! /bin/bash

# to traverse through command line arguments
echo "All arguments:"
for i in $@
do    
    echo -n "$i, "
done   
echo
    
# creating user as a first command line argument given as a username
echo "Creating user $1"
# shifting pointer to second cmd line arg
shift
#printing remaining arguments as a description 
echo "The description given : \"$@\""