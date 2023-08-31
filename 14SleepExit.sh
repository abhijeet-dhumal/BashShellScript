#! /bin/bash

<< NoteBlock
break - to stop loop
continue - to stopcurrent iteration of loop and start next iteration
sleep - to create delay between 2 executions : sleep 1s/1m
exit - to stop script at a point
(exit status) $? - gives status of previous command if that was successful
NoteBlock

# if command line arguments are not given, terminate program
if [[ $# -eq 0 ]]; then 
    echo "Please provide at least one command line args"
    exit 1   
fi

echo "First arg is '$1'"
echo "Second arg is '$2'"
echo "All args : ( $@ )"
echo "Number of args : $#"

#cmd - bash ./14SleepExit.sh 1st 2nd 3rd
<< outputBlock
First arg is '1st'
Second arg is '2nd'
All args : ( 1st 2nd 3rd )
Number of args : 3

--if no args provided--
Please provide at least one command line args
outputBlock

# to print string 3 times again and again after 2 seconds interval
echo -e "\nTo print string 3 times using for loop after certaing time interval: "
for i in {1..3}
do   
    echo -n "hii buddy! "
    sleep 2s
done
<< outputBlock
hii buddy! --2s wait-- hii buddy! --2s wait-- hii buddy!
outputBlock

echo 

echo -e "\nTO check exit status: "
echo $?
<< outputBlock
 0 -- if previous command was successful & 1 if not
outputBlock

echo -e "\nChecking exit status if change directory to root is accessible: "
cd /root/ 
echo $?
<< outputBlock
./14SleepExit.sh: line 47: cd: /root/: Permission denied
1
outputBlock

echo -e "\nChecking exit status after pinging google.com: "
ping -c 1 www.google.com
echo $?
<< outputBlock
PING www.google.com (142.251.42.4) 56(84) bytes of data.
64 bytes from bom12s19-in-f4.1e100.net (142.251.42.4): icmp_seq=1 ttl=115 time=8.30 ms

--- www.google.com ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 8.303/8.303/8.303/0.000 ms

0
outputBlock

echo -e "\nChecking exit status after pinging localhost.com: "
ping -c 1 localhost.com
echo $?
<< outputBlock
PING localhost.com (74.125.224.72) 56(84) bytes of data.

--- localhost.com ping statistics ---
1 packets transmitted, 0 received, 100% packet loss, time 0ms

1
outputBlock
