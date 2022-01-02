#!/bin/sh
. ~/.profile
plist=$(sapcontrol -nr 00 -function GetProcessList)
echo "$plist"
/usr/bin/zabbix_sender -z 192.168.10.32 -s $(hostname) -k hana[process] -o "$plist"
