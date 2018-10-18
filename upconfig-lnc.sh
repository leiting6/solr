#!/usr/bin/env bash
cd ~/solrconfig && git pull
bash ~/solrcloud/bin/solr zk upconfig -z 192.168.2.XX:2181,192.168.2.XX:2181,192.168.2.XX:2181 -n COLLECTION -d ~/solrconfig/lnc && curl "http://192.168.2.XX:8983/solr/admin/collections?action=RELOAD&name=COLLECTION"
