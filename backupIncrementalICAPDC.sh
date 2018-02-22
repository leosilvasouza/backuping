##########################################################
#                                                        #
#   Script para backup incremental do Servidor ICAPDC    #
#                                                        #
##########################################################

####Montar compartilhamento do ICAPDC####


#mount -t nfs 172.16.0.17:/dados/dados/publico /icapdc/publico
mount -t nfs 172.16.0.17:/dados/dados/sistemas /icapdc/sistemas
mount -t nfs 172.16.0.17:/dados/dados/arquivos/agi /icapdc/arquivos/agi
mount -t nfs 172.16.0.17:/dados/dados/arquivos/aceleratec /icapdc/arquivos/aceleratec
mount -t nfs 172.16.0.17:/dados/dados/arquivos/Icatel /icapdc/arquivos/Icatel
mount -t nfs 172.16.0.17:/dados/dados/arquivos/itservicos /icapdc/arquivos/itservicos
mount -t nfs 172.16.0.17:/dados/dados/arquivos/telematica /icapdc/arquivos/telematica

####Fazer a copia incremental compactando empacotando e gerando log####


#find /icapdc/publico -mtime -1 -type f -print | tar zcvf /hd1/Icapdc_Incremental/i_publico-`date +%d%m%Y`.tar.gz -T - > /hd1/Icapdc_Incremental/i_publico-`date +%d%m%Y`.log
find /icapdc/sistemas -mtime -1 -type f -print | tar zcvf /hd1/Icapdc_Incremental/i_sistemas-`date +%d%m%Y`.tar.gz -T - > /hd1/Icapdc_Incremental/i_sistemas-`date +%d%m%Y`.log
find /icapdc/arquivos/agi -mtime -1 -type f -print | tar zcvf /hd1/Icapdc_Incremental/i_agi_-`date +%d%m%Y`.tar.gz -T - > /hd1/Icapdc_Incremental/i_agi_-`date +%d%m%Y`.log
find /icapdc/arquivos/aceleratec -mtime -1 -type f -print | tar zcvf /hd1/Icapdc_Incremental/i_aceleratec-`date +%d%m%Y`.tar.gz -T - > /hd1/Icapdc_Incremental/i_aceleratec-`date +%d%m%Y`.log
find /icapdc/arquivos/Icatel -mtime -1 -type f -print | tar zcvf /hd1/Icapdc_Incremental/i_Icatel-`date +%d%m%Y`.tar.gz -T - > /hd1/Icapdc_Incremental/i_Icatel-`date +%d%m%Y`.log
find /icapdc/arquivos/itservicos -mtime -1 -type f -print | tar zcvf /hd1/Icapdc_Incremental/i_itservicos-`date +%d%m%Y`.tar.gz -T - > /hd1/Icapdc_Incremental/i_itservicos-`date +%d%m%Y`.log
find /icapdc/arquivos/telematica -mtime -1 -type f -print | tar zcvf /hd1/Icapdc_Incremental/i_telematica-`date +%d%m%Y`.tar.gz -T - > /hd1/Icapdc_Incremental/i_telematica-`date +%d%m%Y`.log
####Desmontando compartilhamento do ICAPDC####

#umount /icapdc/publico
umount /icapdc/sistemas
umount /icapdc/arquivos/agi
umount /icapdc/arquivos/aceleratec
umount /icapdc/arquivos/Icatel
umount /icapdc/arquivos/itservicos
umount /icapdc/arquivos/telematica
