#!/bin/sh
. ~/.profile
cdpy
a=$(python systemReplicationStatus.py)
echo "$a"
/usr/local/bin/zabbix_sender -z 192.168.10.32 -s $(hostname) -k replication[status] -o "$a"
