#!/bin/bash
##Script para backup incremental do Servidor ICAPDC:
#
## definir variavel DATE para dia da semana
DATE=`/bin/date +%a`
#
#
##Montar compartilhamento e copia do SISTEMAS do ICAPDC:
mount -t nfs 172.16.0.17:/dados/dados/sistemas /icapdc/sistemas
find /icapdc/sistemas -mtime -1 -type f -print | tar zcvf /hd1/i_sistemas-`date +%d%m%Y`.tar.gz -T - > /hd1/i_sistemas-`date +%d%m%Y`.log
umount /icapdc/sistemas
~
