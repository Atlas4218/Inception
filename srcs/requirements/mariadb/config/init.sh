#!/bin/bash

#echo "###########################init#########################";
echo "CREATE DATABASE \`$SQL_DATABASE\`;" > /etc/mysql/init.sql;
echo "CREATE USER '$SQL_USER'@'%' IDENTIFIED BY '$SQL_USER_PASSWORD';" >> /etc/mysql/init.sql;
echo "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%' WITH GRANT OPTION;" >> /etc/mysql/init.sql;
echo "FLUSH PRIVILEGES;" >> /etc/mysql/init.sql
sleep 3;
#cat /etc/mysql/init.sql;
mariadb-install-db;
mariadbd;
