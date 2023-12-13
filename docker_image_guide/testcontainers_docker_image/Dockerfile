
#SELECT Base MySQL version
FROM mysql:8.0.34

ENV LANG=lv_LV.UTF-8

COPY my.cnf /etc/mysql/conf.d/my.cnf

#Copy schema tables and data into the mysql image. It will auto initialize.
COPY init_short.sql /docker-entrypoint-initdb.d/