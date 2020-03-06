#!/bin/bash

echo "*** Starting php-fpm"
/usr/sbin/php-fpm

echo "*** Starting nginx"
nginx -g 'daemon off;'