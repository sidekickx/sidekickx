#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/emma/bash-grund

read -p "vad heter du? " Name
read -p "hur gammal är du? " Age
read -p "var bor du? " City

printf  "Hej %s Du verkar vara %d år gammal och bor i %s " $Name $Age $City
printf "\n"

