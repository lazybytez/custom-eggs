# ----------------------------------
# Pterodactyl Dockerfile
# Creator: LazyBytez
# ----------------------------------

FROM alpine:latest

MAINTAINER LazyBytez <elias.knodel@gmail.com>

# Add the container user
RUN adduser -D -h /home/container container container

# download needed software like git
RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig

# download PHP / Nginx / Supervisor
RUN apk add nginx php php-fpm gettext supervisor \
    && rm -rf /var/lib/apt/lists/*

# forward request and error logs to docker log collector
#RUN ln -sf /dev/stdout /home/container/.container-config/nginx/logs/access.log \
#	&& ln -sf /dev/stderr /home/container/.container-config/nginx/logs/error.log \
#	&& ln -sf /dev/stderr /var/log/php7.4-fpm.log

# remove nginx sites-enabled
RUN rm -f /etc/nginx/sites-enabled/*

# copy config template files to a temporary folder
COPY nginx.conf.tpl /tmp/nginx.conf.tpl
COPY php-fpm.conf.tpl /tmp/php-fpm.conf.tpl

COPY supervisord.conf /etc/supervisord.conf

# idk what this is but i copied this to
RUN mkdir -p /run/php && touch /run/php/php7.4-fpm.sock && touch /run/php/php7.4-fpm.pid

# copy entrypoint
COPY ./entrypoint.sh /entrypoint.sh

# Set file permissions for nginx
RUN chown -R container:container /var/lib/nginx
RUN chown -R container:container /var/log/nginx

# make a container and give him a home
USER container
ENV  USER=container HOME=/home/container

# create paths and config files for nginx and php // should have user permission because we execute it after creating the container user
RUN mkdir -p /home/container/.container-config/php/ 
RUN mkdir -p /home/container/.container-config/nginx/logs/

# set this as work directory for pterodactyl
WORKDIR /home/container

# execute entrypoint
CMD ["/bin/bash", "/entrypoint.sh"]