#!/bin/ash
# Start php-fpm
php-fpm -D -p /home/container/.runtime/php -c /home/container/.runtime/php/php.ini -y /home/container/.runtime/php/fpm.conf -g /home/container/.runtime/php/proc/php.pid
# Run preflight script
/home/container/prestart.sh
# Run Caddy
/home/container/.runtime/caddy/caddy run --config /home/container/.runtime/caddy/Caddyfile --envfile /home/container/.runtime/caddy/.env
