#!/bin/bash

dialog --inputbox "which subnet?" 10 60 2>/tmp/sub
Sub=`cat /tmp/sub`
dialog --inputbox "which netmask?" 10 60 2>/tmp/net
Net=`cat /tmp/net`
dialog --inputbox "which Range?" 10 60 2>/tmp/ran
Range=`cat /tmp/ran`
dialog --inputbox "which option domain-name-servers?" 10 60 2>/tmp/dnss
Dns=`cat /tmp/dnss`
dialog --inputbox "which option routers?" 10 60 2>/tmp/or
Or=`cat /tmp/or`

exec 1>/home/$USER/dhcpd.conf
echo "subnet $Sub netmask $Net {"
echo "range $Range;"
echo "option domain-name-servers $Dns;"
echo "option routers $Or;"
echo "ddns-update-style none;"
echo "default-lease-time 34567;"
echo "max-lease-time 69120;"
echo "}"

clear


