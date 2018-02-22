# !/bin/bash
#
##Script para backup da pasta Store Group - Servidor Exchange##
#
##Montar compartilhamento do Exchange:
mount -vw -t cifs //172.16.0.25/bkp /Exchange/ -o pass="Rta@#73k8",ver=1,rw,user=administrador
#
##Fazer a copia total compactando e empacotando:
tar -zcf /hd4/Exchange/Exchange-`date +%d%m%Y`.tar.gz /Exchange/ > /hd4/Exchange/Exchange-`date +%d%m%Y`.log
#
find /hd4/Exchange/ -mtime +2 -exec rm -rf {} \;
##Desmontando compartilhamento do Exchange
#:
umount /Exchange
#
