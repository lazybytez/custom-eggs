# ----------------------------------
# Pterodactyl Dockerfile
# Creator: LazyBytez
# ----------------------------------

FROM php:7.4-fpm-alpine

MAINTAINER LazyBytez <elias.knodel@gmail.com>

# Add the container user
RUN adduser -D -h /home/container container

# download needed software like git
RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig

# download PHP / Nginx / Supervisor
RUN apk update && apk upgrade && apk add \
        nginx \
        composer \
        gettext \ 
        supervisor \
        git \
        curl \
        zlib-dev \
        libxml2-dev \
        libzip-dev \
        icu-dev \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev \
    && docker-php-ext-install \
        gd \
        zip \
        intl \
        mysqli \
        ctype \
        iconv \
        json \
        session \
        simplexml \
        tokenizer \
        pdo pdo_mysql

# remove nginx sites-enabled
RUN rm -f /etc/nginx/sites-enabled/*

# create paths and config files for nginx and php // should have user permission because we execute it after creating the container user
RUN mkdir -p /home/temporary

# copy config template files to a temporary folder
COPY nginx.conf.tpl /home/temporary/nginx.conf.tpl
COPY php-fpm.conf.tpl /home/temporary/php-fpm.conf.tpl

# move later needed files to a temporary folder
COPY startup.sh /home/temporary/startup.sh

# copy the supervisor config
COPY supervisord.conf /etc/supervisord.conf

# make a container and give him a home
USER container
ENV  USER=container HOME=/home/container

# set this as work directory for pterodactyl
WORKDIR /home/container

# copy entrypoint
COPY ./entrypoint.sh /entrypoint.sh

# execute entrypoint
CMD ["/bin/bash", "/entrypoint.sh"]