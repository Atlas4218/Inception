FROM		debian:bullseye

RUN			apt update -y  && apt install -y nginx 

COPY        config/default /etc/nginx/sites-available/.
CMD [ "nginx", "-g", "daemon off;" ]