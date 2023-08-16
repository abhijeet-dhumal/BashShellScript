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