#! /bin/bash

# To print options list
echo "Provide an option"

# declare Associative array for options
declare -A myOptions
myOptions=(
    [a]="PrintDate" 
    [b]="ListScripts" 
    [c]="CheckCurrentLocation"
    )

# To directly traverse through myOptions - for i in "${!myOptions[@]}"
for i in {a..c}
do
  echo " Type $i to ${myOptions[$i]}"
done

echo

while true 
do 
    read -p "Enter your choice : " choice
    echo "You have selected option $choice : ${myOptions[$choice]}"

    # to assign appropriate operation to entered option
    case $choice in
        a)echo -e "\nDate : "; date; echo "Ending...";;
        b)echo -e "\nAllScriptsInCurrentDirectory : "
        ls
        echo "Ending...";;
        c)echo -e "\nPresentWorkingDirectory : "; pwd;;
        *)echo -e "\nPlease provide valid option value";;
    esac

    echo -e "\nContinue(c)/Exit(Type q)? : " 
    read flag
    if [[ "$flag" == "q" ]]
    then
        break
    fi
    echo "----------------------"
      
done 

<< output  

Provide an option
 Type a to PrintDate
 Type b to ListScripts
 Type c to CheckCurrentLocation

Enter your choice : a
You have selected option a : PrintDate

Date :
Wed Aug 16 13:11:15 IST 2023
Ending...

Continue(c)/Exit(Type q)? :
c
----------------------
Enter your choice : b
You have selected option b : ListScripts

AllScriptsInCurrentDirectory :
01Introduction.sh  05StringOps.sh              09Loops.sh         11Functions.sh
02Variables.sh     06ArithmeticCalc.sh         10FileRead.sh      12CmdLineArgs.sh
03Input.sh         07ConditionalStatements.sh  10NamesToRead.txt  README.md
04Arrays.sh        08Case.sh                   10Test.csv
Ending...

Continue(c)/Exit(Type q)? :
c
----------------------
Enter your choice : c
You have selected option c : CheckCurrentLocation

PresentWorkingDirectory :
/home/akshay-abhi/repos/shellScript

Continue(c)/Exit(Type q)? :
q

output