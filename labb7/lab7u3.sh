#!/bin/bash


if [ $EUID -eq 0 ]; then
    dialog --inputbox "type in name for new user" 10 60 2>/tmp/new
Name=`cat /tmp/new`
    dialog --passwordbox "type in password for new user" 10 60 2>/tmp/pass
Pass=`cat /tmp/pass`
clear
    `adduser $Name`
    echo $Name:$Pass | chpasswd
else
    echo "you are not miss.root"
fi

