#!/bin/bash

# Start ssh

/usr/sbin/sshd

# Start php process in background

/usr/sbin/php-fpm -c /etc/php/fpm

# Starts nginx daemon

nginx -g 'daemon off;'
