#!/bin/sh

DEFAULT_CORE_NAME=$1
HOST=127.0.0.1
URL="http://$HOST:8983/solr/$DEFAULT_CORE_NAME/admin/ping"

IS_200_OK=$(wget --server-response $URL -O ip-tmp 2>&1| grep -c 'HTTP/1.1 200 OK')

while [ "$IS_200_OK" != 1 ]
do
    echo "The reslt of Ping: $IS_200_OK"
    # PING_RES=$(curl -I http://$HOST:8983/solr/$DEFAULT_CORE_NAME/admin/ping | head -n 1 | cut -d ' ' -f2)
    IS_200_OK=$(wget --server-response $URL -O ip-tmp 2>&1| grep -c 'HTTP/1.1 200 OK')
    sleep 10
done

wget http://$HOST:8983/solr/$DEFAULT_CORE_NAME/Dataimport?command=full-import&clean=true