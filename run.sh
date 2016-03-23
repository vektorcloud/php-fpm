#!/usr/bin/dumb-init /bin/sh
touch /var/log/php-fpm.log
touch /var/log/php-fpm-access.log
php-fpm --fpm-config "/etc/php/php-fpm.conf" &
tail -f /var/log/php*.log &
nginx
