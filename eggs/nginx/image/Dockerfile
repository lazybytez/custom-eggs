# ----------------------------------
# Pterodactyl Dockerfile
# Creator: LazyBytez
# ----------------------------------

FROM alpine:latest

MAINTAINER LazyBytez <elias.knodel@gmail.com>

# Add the container user
RUN adduser -D -h /home/container container

# download needed software like git
RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig

# download PHP / Nginx / Supervisor
RUN apk add nginx php php-fpm gettext supervisor \
    && rm -rf /var/lib/apt/lists/*

# remove nginx sites-enabled
RUN rm -f /etc/nginx/sites-enabled/*

# create paths and config files for nginx and php // should have user permission because we execute it after creating the container user
RUN mkdir -p /home/temporary

# copy config template files to a temporary folder
COPY nginx.conf.tpl /home/temporary/nginx.conf.tpl
COPY php-fpm.conf.tpl /home/temporary/php-fpm.conf.tpl

COPY supervisord.conf /etc/supervisord.conf

# idk what this is but i copied this to
# RUN mkdir -p /run/php && touch /run/php/php-fpm.sock && touch /run/php/php-fpm.pid

# Set file permissions for nginx and php
# RUN mkdir -p /var/lib/nginx/logs && touch /var/lib/nginx/logs/error.log
# RUN chown -R 999:998 /var/lib/nginx/
# RUN chmod 777 /var/lib/nginx/logs/error.log

# RUN mkdir -p /var/log/php7 && touch /var/log/php7/error.log
# RUN chown -R 999:998 /var/log/php7
# RUN chmod 777 /var/log/php7/error.log

# RUN chgrp container /run/php/php-fpm.sock
# RUN chmod g+w /run/php/php-fpm.sock
# RUN chown -R container:container /run/php/
# RUN chmod 755 /run/php/
# RUN chown -R 999:998 /run/php/

# make a container and give him a home
USER container
ENV  USER=container HOME=/home/container

# set this as work directory for pterodactyl
WORKDIR /home/container

# copy entrypoint
COPY ./entrypoint.sh /entrypoint.sh

# execute entrypoint
CMD ["/bin/bash", "/entrypoint.sh"]