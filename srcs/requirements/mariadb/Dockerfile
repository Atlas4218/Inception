FROM		debian:bullseye

RUN			apt update -y && apt upgrade -y && apt install -y \
                mariadb-server \
                vim

COPY        config/50-server.cnf /etc/mysql/mariadb.conf.d/.

#COPY        config/init.sql     /etc/mysql/init.sql
RUN         mkdir /run/mysqld

COPY	config/init.sh .
RUN		chmod +x init.sh

CMD         ["./init.sh"]