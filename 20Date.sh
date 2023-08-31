#! /bin/bash

<< NotesBlock

Format		Description

date +%a	Gives name of the weekday [Mon, Sun, Fri]
date +%A	Gives name of the weekday [Monday, Sunday, Friday]
date +%b	Gives name of the month [Jan, Feb, Mar]
date +%B	Gives name of the month [January, February, March]
date +%d	Displays day of the month [05]
date +%D	Displays current date MM/DD/YY format [11-01-21]
date +%F	Shows date in YYYY-MM-DD format [2021-11-01]
date +%H	Shows hour in 24-hour format [22]
date +%I	Shows hour in 12-hour format [11]
date +%j	Displays the day of the year [001 – 366]
date +%m	Displays the number of the month [01-12]
date +%M	Displays minutes [00-59]
date +%S	Displays seconds [00-59]
date +%N	Displays in Nanoseconds
date +%T	Displays time as HH:MM:SS [in 24-hour format]
date +%u	Day of the week [1-7] 1 is Monday, 6 is Saturday
date +%U	Shows week number of the year [00-53]
date +%Y	Displays year YYYY [2021]
date +%Z	Displays Time zone

NotesBlock

today=`date +%D`
echo "Today's date: $today"
