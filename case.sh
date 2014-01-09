#!/bin/bash

if [ $EUID = 0 ]; then
dialog --menu "what would you like to do?" 10 60 5 add "add new user" delete "delete a user" lock "lock a user account" password "change password" shell "change shell" 2>/tmp/meny

Choice=`cat /tmp/meny`

if [ $Choice = "add" ]; then 
    dialog --inputbox "write username" 10 60 2>/tmp/add
    clear
Name=`cat /tmp/add`
    ` useradd $Name`
fi

if [ $Choice = "delete" ]; then 
    dialog --inputbox "write username for the user you like to delete" 10 60 2>/tmp/del
    clear
Del=`cat /tmp/del`
    `userdel $Del`
fi
if [ $Choice = "lock" ]; then
    dialog --inputbox "name the useraccount you want to lock" 10 60 2>/tmp/lock
    clear
Lock=`cat /tmp/lock`
    passwd -l $Lock
fi

if [ $Choice = "password" ]; then
    dialog --inputbox "which user would like to change password" 10 60 2>/tmp/pass
    dialog --passwordbox "the new password" 10 60 2>/tmp/new
    clear
Pass=`cat /tmp/pass`
New=`cat /tmp/new`
    echo $Pass:$New | chpasswd 
fi

else
    echo "you are not root"
fi
            
