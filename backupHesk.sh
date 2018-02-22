#!/bin/bash
#
#
#
## definir variavel DATE para dia da semana
DATE=`/bin/date +%a`
#
## Copiar backup
scp root@172.16.0.21:/Backup/BKPHesk__`date +%d%m%Y`.sql.gz /hd4/Hesk/Banco
#
## Copia Incremental
scp root@172.16.0.21:/Backup_Incremental/i_hesk-`date +%d%m%Y`.tar.gz /hd4/Hesk/Anexos_Incremental
## Copia Log
#
scp root@172.16.0.21:/Backup_Incremental/i_hesk-`date +%d%m%Y`.log /hd4/Hesk/Anexos_Incremental
#fim
#
#
