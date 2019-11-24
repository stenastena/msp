#!/bin/bash
sudo snap install docker
sudo docker run --name wp007 -p 8080:80 -e WORDPRESS_DB_HOST=mysqlmsp.mysql.database.azure.com:3306 -e WORDPRESS_DB_USER=superadmin@mysqlmsp -e WORDPRESS_DB_PASSWORD=1q21!Q@!1q21 -e WORDPRESS_DB_NAME=wp -d wordpress