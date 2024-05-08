FROM		debian:bullseye

RUN			apt update -y && apt upgrade -y && apt install\
                mariadb-server -y

COPY        config/50-server.cnf /etc/mysql/mariadb.conf.d/.

COPY        config/init.sql     /etc/mysql/init.sql
RUN         mkdir /run/mysqld

COPY	config/script.sh .
RUN		chmod +x script.sh

CMD         ["./script.sh"]