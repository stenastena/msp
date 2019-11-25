#!/bin/bash -x
sudo snap install docker
sleep 5s
sudo docker run --name wp007 -p 8080:80 -e WORDPRESS_DB_HOST=wordpressmsp-mysqlserver.mysql.database.azure.com:3306 \
-e WORDPRESS_DB_USER=superadmin@wordpressmsp-mysqlserver -e WORDPRESS_DB_PASSWORD=1q21!Q@!1q21 \
-e WORDPRESS_DB_NAME=wordpressmspdb -d wordpress

#load script for autostartung container with Wordpress
cd /usr/local/bin
sudo curl -O https://raw.githubusercontent.com/stenastena/msp/master/ForItem33/wps.sh
sudo chmod +x /usr/local/bin/wps.sh

#making service for autloloading scrits
cd /lib/systemd/system
sudo curl -O https://raw.githubusercontent.com/stenastena/msp/master/ForItem33/service-autoload.service
sudo chmod 644  /lib/systemd/system/service-autoload.service

sudo systemctl daemon-reload
sudo systemctl enable service-autoload.service