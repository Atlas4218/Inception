FROM	debian:bullseye

RUN		apt update -y && apt upgrade -y && apt install -y\
			php-fpm \
			php-mysqli \
			curl \
			vim

RUN		mkdir /var/run/php

COPY	config/www.conf /etc/php/7.4/fpm/pool.d/.

COPY	config/script.sh .
RUN		chmod +x script.sh

CMD		["./script.sh"]