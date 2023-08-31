
#! /bin/bash

fileNameToWriteIn="21Redirect.log"

ping -c 1 www.google.com > $fileNameToWriteIn

echo "Check $fileNameToWriteIn content using 'cat $fileNameToWriteIn' !"

<< NoteBlock

> - append to already existsing file content
>> - overrite already existing file content

NoteBlock

