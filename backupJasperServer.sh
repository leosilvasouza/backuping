#!/bin/bash
#
## definir variavel DATE para dia da semana
DATE=`/bin/date +%a`
#
## Copiar Arquivos Pasta Anexo
scp root@172.16.0.36:/Backup/BKPJasper__`date +%d%m%Y`.zip /hd1/JasperServer/Aplicacao/
#
#
#fim
