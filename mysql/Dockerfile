FROM mysql:8.0

COPY data.sql /docker-entrypoint-initdb.d/data.sql
EXPOSE 3306

CMD [ "mysqld" ]