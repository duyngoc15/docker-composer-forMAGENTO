#!/bin/sh

# /etc/init.d/php7.4-fpm start -F && nginx -g "daemon off;"
service php7.4-fpm restart -F && nginx -g "daemon off;"
