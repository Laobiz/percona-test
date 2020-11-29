FROM percona

ENV MYSQL_ROOT_PASSWORD=111
ENV MYSQL_PORT=3306
ENV MYSQL_USER=mydb_slave_user
ENV MYSQL_PASSWORD=mydb_slave_pwd
ENV MYSQL_DATABASE=mydb
ENV MYSQL_LOWER_CASE_TABLE_NAMES=0

EXPOSE 3306

COPY ./conf/mysql.conf.cnf /etc/my.cnf
COPY ./slave_setup.sh /docker-entrypoint-initdb.d/
COPY ./start_config.sql /docker-entrypoint-initdb.d/