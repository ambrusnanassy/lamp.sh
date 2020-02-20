#!/bin/bash
sudo apt update
sudo apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php apache2 mysql-server -y
sudo mysql -e "CREATE USER 'alma'@'localhost' IDENTIFIED BY 'almapass';"
sudo mysql -e "create database almadb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
sudo mysql -e "GRANT ALL PRIVILEGES ON almadb.* TO 'alma'@'localhost';"
