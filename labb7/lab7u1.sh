#!/bin/bash

dialog --menu "which would you like to open? " 10 60 2 firefox "firefox" chrome "google chrome" 2>/tmp/menu
Choice=`cat /tmp/menu`
$Choice
if [ "$Choice" = "chrome" ]; then
    echo "not installed"
else
    clear
fi
exit 0
