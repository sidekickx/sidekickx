#!/bin/bash
Hosts=/home/emma/bash-grund/hosts

zenity --info --text="you need to have wget installed to run this correct"

declare -a Name=(`cat $Hosts | awk '{ print $1 }'`)
declare -a Ip=(`cat $Hosts | awk '{ print $2 }'`)

web (){
    wget -t 1 -T 1 ${Ip[$i]} &>/dev/null
    result=$?
}

until [ 0 -eq 1 ]; do
 echo -e "HOSTNAME \t IP \t UP/DOWN \t WWW"
 echo "---------------------------------------------"
for i in ${!Name[*]}; do 
    ping -c 1 -w 1 ${Ip[$i]} &>/dev/null 

    if [ $? -eq 0 ]; then 
       echo -en "${Name[$i]} \t ${Ip[$i]} \t \e[;32mUP\e[0m "
    elif [ $? -ge 1 ]; then
        echo -en "${Name[$i]} \t ${Ip[$i]} \t \e[;31mDOWN\e[0m  "
    fi
    web
    if [ $result -eq 0 ]; then
        echo -e "\t\t\e[;32mUP\e[0m "
    else 
        echo -e "\t\t\e[;31mDOWN\e[0m "
    fi

done
 echo "---------------------------------------------" 
done

