#!/bin/bash
#
##Script para backup Total do Servidor PIV##
#
##Montar compartilhamento do PIV:
mount -vw -t cifs '//172.16.0.200/PIV' /PIV/ -o pass=piv,ver=1,rw,user=piv
#
##Fazer a copia incremental compactando e empacotando:
find /PIV/ -mtime -1 -type f -print | tar zcvf /Oracle/PIV/i_piv_-`date +%d%m%Y`.tar.gz -T - > /Oracle/PIV/i_piv_-`date +%d%m%Y`.log
#
##Desmontando compartilhamento do PIV:
umount /PIV/
#
#
