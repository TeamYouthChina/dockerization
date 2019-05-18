FROM solr:7.6.0
WORKDIR /quest

ARG DEFAULT_CORE_NAME=youthchinacore

COPY config /quest/config
COPY mysql-connector-java-8.0.15.jar /opt/solr/contrib/dataimporthandler/lib/mysql-connector-java-8.0.15.jar

EXPOSE 8983

# create default core
CMD [ "solr-precreate","${DEFAULT_CORE_NAME}","/quest/config" ] 

