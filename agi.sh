#!/bin/bash
DATE=`/bin/date +%a`
mount -t nfs 172.16.0.17:/dados/dados/arquivos/agi /icapdc/arquivos/agi
find icapdc/dados/arquivos/agi -mtime -1 -type f -print | tar zcvf /hd1/i_agi_-`date +%d%m%Y`.tar.gz -T - > /hd1/i_agi_-`date +%d%m%Y`.log
umount /icapdc/arquivos/agi
