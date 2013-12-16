#!/bin/bash

#for this to work you will need to have the snow.sh and kill.sh script

read -p "would you like some snow for christmas? yes/no " Snow

if [ $Snow = yes ]; then
    snow.sh &
    kill.sh 

else 
    printf "what a partypooper\n"
fi
exit 0

