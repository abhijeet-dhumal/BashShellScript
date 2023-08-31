#! /bin/bash


<< NoteBlock

RANDOM - A random integer between 0 and 32767 is generated
UID - User ID of the user logged in
        for root user, UID will always be 1

NoteBlock

echo "To print random number use RANDOM variable : $RANDOM"
echo "To print UID(User ID) : $UID"

if [[ $UID -eq 0  ]]
then 
        echo "Logged in user is Root user!"
else
        echo "Logged in user is simple user!"
fi

<< OutputBlock

To print random number use RANDOM variable : 14976
To print UID(User ID) : 4213994
Logged in user is simple user!


OutputBlock
