#!/bin/bash
#
#
#
## definir variavel DATE para dia da semana
DATE=`/bin/date +%a`
#
# Copiar backup Banco de Dados
scp root@172.16.0.48:/Backups/BKPRedMine__`date +%d%m%Y`.sql.gz /hd1/Red_Mine/Banco/
#
## Copiar Arquivos Pasta Anexo
scp root@172.16.0.48:/Backup_Anexos/i_redmine-`date +%d%m%Y`.tar.gz /hd1/Red_Mine/Anexos/
### Copiar Arquivos Pasta Anexo Log
scp root@172.16.0.483:/Backup_Anexos/i_redmine-`date +%d%m%Y`.log /hd1/Red_Mine/Anexos/
##fim
#
#
