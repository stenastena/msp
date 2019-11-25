#!/bin/bash 
sudo apt update
sudo apt install mysql-server

mysql -h wordpressmsp-mysqlserver.mysql.database.azure.com -u superadmin@wordpressmsp-mysqlserver \
-p1q21!Q@!1q21 -e "CREATE DATABASE wordpressmspdb"

!надо загрузить дамп локально! 

mysql -h wordpressmsp-mysqlserver.mysql.database.azure.com -u superadmin@wordpressmsp-mysqlserver \
-p1q21!Q@!1q21 wordpressmspdb < ~/Dump20191124.sql > output.log
