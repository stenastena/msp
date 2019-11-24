#!/bin/bash -x
sudo snap install docker
sleep 5s
sudo docker run --name wp007 -p 8080:80 -e WORDPRESS_DB_HOST=wordpressmsp-mysqlserver.mysql.database.azure.com:3306 \
-e WORDPRESS_DB_USER=superadmin@wordpressmsp-mysqlserver -e WORDPRESS_DB_PASSWORD=1q21!Q@!1q21 \
-e WORDPRESS_DB_NAME=wordpressmsp-database -d wordpress

