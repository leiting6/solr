#!/usr/bin/env bash
cd ~/solrconfig && git pull
bash ~/solrcloud/bin/solr zk upconfig -z 192.168.2.102:6181,192.168.2.103:6181,192.168.2.104:6181 -n lnc -d ~/solrconfig/lnc && curl "http://192.168.2.102:8983/solr/admin/collections?action=RELOAD&name=lnc"
