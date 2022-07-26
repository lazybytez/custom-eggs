FROM --platform=$BUILDPLATFORM php:8.1-fpm-alpine

LABEL author="LazyBytez" maintainer="contact@lazybytez.de"

LABEL org.opencontainers.image.source="https://github.com/lazybytez/custom-eggs"
LABEL org.opencontainers.image.licenses=MIT

# Install applications and dependencies
RUN apk add --update --no-cache \
    ca-certificates \
    git \
    shadow \
    curl \
    libcurl \
    ffmpeg \
    git \
    openssl-dev \
    sqlite \
    zlib-dev \
    libxml2-dev \
    libxslt-dev \
    bzip2-dev \
    libzip-dev \
    postgresql-dev \
    icu-dev \
    autoconf \
    oniguruma-dev \
    sqlite3pp \
    libpng-dev \
    freetype-dev \
    libjpeg-turbo-dev \
    g++ \
    make \
    tar \
    tzdata

# Install PHP extensions
# To ensure users are satified, we add more than most people will need
RUN CFLAGS="$CFLAGS -D_GNU_SOURCE" docker-php-ext-install \
        opcache \
        soap \
        ftp \
        xsl \
        bcmath \
        ctype \
        dom \
        zip \
        session \
        sockets \
        pdo \
        mbstring \
        pgsql \
        pdo_pgsql \
        pdo_mysql \
        pdo_sqlite \
        intl \
        mysqli \
        gd \
        fileinfo \
        phar \
        simplexml \
        xml \
        xmlwriter \
        bz2

# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/bin --filename=composer --1 \
    && php -r "unlink('composer-setup.php');"

# Add container user
RUN adduser -D -h /home/container container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./../entrypoint.sh /entrypoint.sh
CMD [ "/bin/ash", "/entrypoint.sh" ]
