#!/bin/bash

echo "###########################init#########################";
echo "CREATE DATABASE \`hello\`;" > /etc/mysql/init.sql;
echo "CREATE USER 'wpuser'@'%' IDENTIFIED BY 'password';" >> /etc/mysql/init.sql;
echo "GRANT ALL PRIVILEGES ON *.* TO 'wpuser'@'%' WITH GRANT OPTION;" >> /etc/mysql/init.sql;
echo "FLUSH PRIVILEGES;" >> /etc/mysql/init.sql
sleep 3;
cat /init.sql;
mariadb-install-db;
mariadbd;
