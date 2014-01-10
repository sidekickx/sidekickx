#!/bin/bash
Hosts=/home/emma/bash-grund/hosts
for i in $Hosts; do 
    ping $i 
    
    if [ $? = 1 ]; then 
        echo "DOWN"
    fi
    if [ $? = 0 ]; then
        echo "UP"
    fi
done
