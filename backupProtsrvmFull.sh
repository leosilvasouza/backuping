#!/bin/bash
#
##Script para backup Total do Servidor Protsrvm##
#
##Montar compartilhamento do Protsrvm:
mount -vw -t cifs '//172.16.0.15/totvs 11' /protsrvm/protheus/ -o pass=PASSWORD,ver=1,rw,user=USERNAME
#
##Fazer a copia total compactando e empacotando:
tar -zvcf /hd2/Protheus\ Full/FProtheus-`date +%d%m%Y`.tar.gz /protsrvm/protheus/ > /hd2/Protheus\ Full/FProtheus-`date +%d%m%Y`.log
#
##Desmontando compartilhamento do Protsrvm:
umount /protsrvm/protheus/
#
#
