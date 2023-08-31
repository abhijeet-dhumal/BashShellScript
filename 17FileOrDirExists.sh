#! /bin/bash

folder="/home/abdhumal/AbhiDev/BashShellScript"
filePath="/home/abdhumal/AbhiDev/BashShellScript/16FilePath.sh"

# Folder existance check
echo "FolderPath : ${folder}"
if [[ -d $folder ]]
then 
	echo "Folder exists"
elif [[ ! -d $folder ]]
then 
	echo "Folder doesn't exists!"
	exit 1
fi

# File existance check
echo -e "\nFilePath : ${filePath}"
if [[ -f $filePath ]]
then 
        echo "File exists"
elif [[ ! -f $filePath ]]
then 
        echo "File doesn't exists!"
	exit 1
fi

<< outputBlock

FolderPath : /home/abdhumal/AbhiDev/BashShellScript
Folder exists

FilePath : /home/abdhumal/AbhiDev/BashShellScript/16FilePath.sh
File exists

outputBlock
