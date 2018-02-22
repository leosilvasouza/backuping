#!/bin/bash
#
#
#
## definir variavel DATE para dia da semana
DATE=`/bin/date +%a`
#
## Copiar backup
scp root@172.16.0.5:/Backups/Openfire__`date +%d%m%Y`.sql.gz /Oracle/Imsrv
#
##fim
#
#
