#! /bin/bash

<< NoteBlock

basename - strip directory info and only give filename
dirname - strip filename and gives directory path
realpath - gives you full path for a file

NoteBlock

echo  "File path : /home/abdhumal/AbhiDev/BashShellScript/16FilePath.sh"
echo -n "BaseName : "
basename /home/abdhumal/AbhiDev/BashShellScript/16FilePath.sh
echo -n "DirName : "
dirname /home/abdhumal/AbhiDev/BashShellScript/16FilePath.sh
echo -n "RealPath : "
realpath /home/abdhumal/AbhiDev/BashShellScript/16FilePath.sh

