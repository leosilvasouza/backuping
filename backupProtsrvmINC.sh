# !/bin/bash
#
##Script para backup incremental do Servidor Protsrvm:
#
##Montar compartilhamento do Protsrvm:
mount -vw -t cifs '//172.16.0.15/totvs 11' /protsrvm/protheus/ -o pass=M3tall7C@,ver=1,rw,user=userbkp
#
#
find /protsrvm/protheus/ -mtime -1 -type f -print | tar zcvf /hd2/Protheus\ Incremental/i_protheus_-`date +%d%m%Y`.tar.gz -T - > /hd2/Protheus\ Incremental/i_protheus-`date +%d%m%Y`.log
#
#
#
##Desmontando compartilhamento do Protsrvm:
umount /protsrvm/protheus
#
#
