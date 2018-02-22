#!/bin/bash
##Script para backup incremental do Servidor ICAPDC:
#
## definir variavel DATE para dia da semana
DATE=`/bin/date +%a`
#
#
##Montar compartilhamento e copia do NETLOGON do ICAPDC:
mount -t nfs 172.16.0.17:/dados/netlogon /icapdc/netlogon
find /icapdc/netlogon -mtime -1 -type f -print | tar zcvf /hd1/i_netlogon-`date +%d%m%Y`.tar.gz -T - > /hd1/i_netlogon-`date +%d%m%Y`.log
umount /icapdc/netlogon
