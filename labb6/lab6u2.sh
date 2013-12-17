#!/bin/bash

#erase all files from directory hej 

if [ $EUID -eq 0 ]; then
    rm -r $HOME/hej/*
else
    echo "you are not miss.root"
fi
