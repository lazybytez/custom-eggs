#!/bin/bash
cd /home/container

export NGINX_PORT=${NGINX_PORT:-'2999'} # ${SERVER_PORT}
export NGINX_WEB_ROOT=${NGINX_WEB_ROOT:-'/mnt/server/project'}
export NGINX_PHP_FALLBACK=${NGINX_PHP_FALLBACK:-'/index.php'}
export NGINX_PHP_LOCATION=${NGINX_PHP_LOCATION:-'^/index\.php(/|$)'}
export NGINX_USER=${NGINX_USER:-'www-data'}
export NGINX_CONF=${NGINX_CONF:-'/home/container/.container-config/nginx/nginx.conf'}

export PHP_SOCK_FILE=${PHP_SOCK_FILE:-'/run/php.sock'}
export PHP_USER=${PHP_USER:-'www-data'}
export PHP_GROUP=${PHP_GROUP:-'www-data'}
export PHP_MODE=${PHP_MODE:-'0660'}
export PHP_FPM_CONF=${PHP_FPM_CONF:-'/home/container/.container-config/php/php-fpm.conf'}

envsubst '${NGINX_PORT} ${NGINX_WEB_ROOT} ${NGINX_PHP_FALLBACK} ${NGINX_PHP_LOCATION} ${NGINX_USER} ${NGINX_CONF} ${PHP_SOCK_FILE} ${PHP_USER} ${PHP_GROUP} ${PHP_MODE} ${PHP_FPM_CONF}' < /tmp/nginx.conf.tpl > $NGINX_CONF
envsubst '${NGINX_PORT} ${NGINX_WEB_ROOT} ${NGINX_PHP_FALLBACK} ${NGINX_PHP_LOCATION} ${NGINX_USER} ${NGINX_CONF} ${PHP_SOCK_FILE} ${PHP_USER} ${PHP_GROUP} ${PHP_MODE} ${PHP_FPM_CONF}' < /tmp/php-fpm.conf.tpl > $PHP_FPM_CONF

/usr/bin/supervisord

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}