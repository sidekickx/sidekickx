#!/bin/bash

# to run this you need to have the backup directory in /tmp

Now=$(date +"%Y-%m-%d-%H.%M")
Zip=" tar -czpf /tmp/backup/$Now.tar.gz "
declare Arg

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
fi

