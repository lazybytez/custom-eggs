error_log = /home/container/.container-config/php/logs/error.log

[www]

pm = dynamic
pm.max_children = 5
pm.start_servers = 2
pm.min_spare_servers = 1
pm.max_spare_servers = 3
clear_env = no

listen = $PHP_SOCK_FILE
listen.mode = $PHP_MODE
