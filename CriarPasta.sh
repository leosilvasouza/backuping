#!/bin/bash
#
#DATE=`/bin/date +%d%h%g`
DATE=$(date -d 'yesterday' '+%d%h%g')

#
#Criar pasta para Backups Oracle Suricato e mover todos os backups da semana para essa pasta
scp root@172.16.0.11:/backup/*.gz /Oracle/Export/
scp root@172.16.0.11:/backup/*.log /Oracle/Export/
mkdir /Oracle/Export/$DATE
mv /Oracle/Export/*.gz /Oracle/Export/$DATE
mv /Oracle/Export/*.log /Oracle/Export/$DATE
#
#
