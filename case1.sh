#!/bin/bash

Debdir="/home/emma/deb/"
if [ $EUID = 0 ]; then
dialog --msgbox "you will need to have a directory in \
    you home folder called deb" 10 60
dialog --title "select package" --fselect $Debdir 10 60
FILE=$(dialog --stdout --title "Please choose a file" --fselect $Debdir 10 60)
dialog --menu "what would you like to do?" 10 60 3 -i "install" -r "remove" -p "purge" 2>/tmp/flags
clear
Flag=`cat /tmp/flags`
if [ $Flag = -i ]; then 
    dpkg -i $FILE
fi
if [ $Flag = -r ]; then 
    dpkg -r $FILE
fi 

if [ $Flag = -p ]; then 
    dpkg -i $FILE
fi
else 
    echo "you are not root"
fi
