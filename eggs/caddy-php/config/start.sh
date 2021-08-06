#!/bin/ash
# Start php-fpm
php-fpm -D -p /home/container/php -c /home/container/php/php.ini -y /home/container/php/fpm.conf -g /home/container/php/php.pid
# Run preflight script
./prestart.sh
# Run Caddy
./caddy run --config /home/container/Caddyfile
