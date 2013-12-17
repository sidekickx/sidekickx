#!/bin/bash

Now=$(date +"%Y-%m-%d-%H.%M")
Zip="tar -czpf /tmp/backup/$Now.tar.gz "
if [ ! -e /tmp/backup ]; then
    mkdir /tmp/backup
fi

if [ $EUID -eq 0 ]; then
    scp master@172.24.10.3:/etc/bind/named.conf.local /tmp/
    if [ $? -eq 0 ]; then
        echo "file succesfully copied"
        Arg="/tmp/named.conf.local"
        `$Zip $Arg`
        if [ $? -eq 0 ]; then
            echo "file succesfully backuped"
        fi
    fi
else 
    echo "you are not miss.root"
fi
exit 0
