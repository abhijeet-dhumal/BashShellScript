#! /bin/bash

# try to run this file with command line arguments such as './12CmdLineArgs Command Line Arguments'

# if command line arguments are not given, terminate program
if [[ $# -eq 0 ]]; then 
    echo "Please provide command line arguments"
    exit 1   
fi

# to traverse through command line arguments
echo "All arguments:"
for i in $@
do    
    echo -n "$i, "
done

<< Output
All arguments:
Command, Line, Arguments,
Output

echo
    
# creating user as a first command line argument given as a username
echo "Creating user $1"
# shifting pointer to second cmd line arg
shift
#printing remaining arguments as a description 
echo "The description given : \"$@\""

<< Output
Creating user Command
The description given : "Line Arguments"
Output