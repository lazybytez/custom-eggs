#!/bin/bash
cd /home/container

# Supervisor
export NGINX_PORT=${NGINX_PORT:-${SERVER_PORT}}
export NGINX_WEB_ROOT=${NGINX_WEB_ROOT:-"/home/container/${NGINX_ROOT}"}
export NGINX_PHP_FALLBACK=${NGINX_PHP_FALLBACK:-'/index.php'}
export NGINX_PHP_LOCATION=${NGINX_PHP_LOCATION:-'^/index\.php(/|$)'}
export NGINX_CONF=${NGINX_CONF:-'/home/container/.container-config/nginx/nginx.conf'}

export PHP_SOCK_FILE=${PHP_SOCK_FILE:-'/home/container/.container-config/php/donttouch/php-fpm.sock'}
export PHP_MODE=${PHP_MODE:-'0660'}
export PHP_FPM_CONF=${PHP_FPM_CONF:-'/home/container/.container-config/php/php-fpm.conf'}

# Create config files the first time they dont exist
if ! [ -f ${NGINX_CONF} ]
    then
        # Create files
        mkdir -p "${NGINX_CONF%/*}" && touch "$NGINX_CONF"
        mkdir -p "${PHP_FPM_CONF%/*}" && touch "$PHP_FPM_CONF"

        # Fill in variables
        envsubst '${NGINX_PORT} ${NGINX_WEB_ROOT} ${NGINX_PHP_FALLBACK} ${NGINX_PHP_LOCATION} ${NGINX_CONF} ${PHP_SOCK_FILE} ${PHP_MODE} ${PHP_FPM_CONF}' < /home/temporary/nginx.conf.tpl > $NGINX_CONF
        envsubst '${NGINX_PORT} ${NGINX_WEB_ROOT} ${NGINX_PHP_FALLBACK} ${NGINX_PHP_LOCATION} ${NGINX_CONF} ${PHP_SOCK_FILE} ${PHP_MODE} ${PHP_FPM_CONF}' < /home/temporary/php-fpm.conf.tpl > $PHP_FPM_CONF

        # Create script file
        cp /home/temporary/startup.sh /home/container/.container-config/scripts/startup.sh
fi

# Custom startup script
./.container-config/scripts/startup.sh

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
eval ${MODIFIED_STARTUP}

# Text to indentify server startup
echo "Up and running!"

# Open a shell so you can execute symfony commands etc
ash