#!/bin/bash
sleep 10
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --locale=fr_FR --allow-root
./wp-cli.phar config create --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_USER_PASSWORD --dbhost=mariadb:3306 --allow-root
./wp-cli.phar core install --url=$DOMAIN_NAME --title=$SITE_TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root
./wp-cli.phar user create $USER1_LOGIN $USER1_MAIL --user_pass=$USER1_PASS --allow-root
php-fpm7.4 -F