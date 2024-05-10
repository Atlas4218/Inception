FROM		debian:bullseye

RUN		apt update -y  && apt install -y \
            nginx \
            openssl \
            vim

COPY    config/default /etc/nginx/sites-available
COPY    config/nginx.conf /etc/nginx/.

RUN     mkdir -p /etc/nginx/ssl
RUN     openssl req -x509 -nodes -out \
        /etc/nginx/ssl/inception.crt -keyout \
        /etc/nginx/ssl/inception.key -subj \
        "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=rastie.42.fr/UID=rastie"

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]