#!/usr/bin/env sh

php-fpm -D
nginx -g "pid /tmp/nginx.pid;"
tail -f /dev/null
