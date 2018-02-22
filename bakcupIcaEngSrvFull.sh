#!/bin/bash
#
##Script para backup Total do Servidor IcaEngSrv####
##
####Apagar Backup Anterior
cd /hd4/IcaEngSrv/Full/
rm -rf *

##Montar compartilhamento do Protsrvm:
mount -vw -t cifs '//172.16.0.20/D$' /icaengsrv/dados/ -o pass=icatel@2015,ver=1,rw,user=administrador
#
##Fazer a copia total compactando e empacotando:
tar -zvcf /hd4/IcaEngSrv/Full/FIcaEngSrv-`date +%d%m%Y`.tar.gz /icaengsrv/dados/ > /hd4/IcaEngSrv/Full/FIcaEngSrv-`date +%d%m%Y`.log
#
##Desmontando compartilhamento do Protsrvm:
umount /icaengsrv/dados/
#
#
