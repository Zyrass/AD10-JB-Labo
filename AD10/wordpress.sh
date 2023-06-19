#!/bin/bash

# Mise à jour des paquets
sudo apt-get update

# Installation d'Apache, PHP et MySQL
sudo apt-get install -y apache2 php libapache2-mod-php mysql-server php-mysql

# Téléchargement et décompression de WordPress
wget -c http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
sudo cp -R wordpress/* /var/www/html

# Configuration de la base de données
sudo mysql -u root -e "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
sudo mysql -u root -e "GRANT ALL ON wordpress.* TO 'wordpressuser'@'localhost' IDENTIFIED BY 'password';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"

# Configuration de WordPress
sudo cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sudo sed -i "s/database_name_here/wordpress/g" /var/www/html/wp-config.php
sudo sed -i "s/username_here/wordpressuser/g" /var/www/html/wp-config.php
sudo sed -i "s/password_here/password/g" /var/www/html/wp-config.php

echo -e "\n\033[1:35m WORDPRESS a bien été configuré avec succès :D\033[0m\n"
