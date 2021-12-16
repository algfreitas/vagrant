#!/usr/bin/env bash

apt-get update
apt-get install -y nginx
if ! [ -L /var/www/html ]; then
 rm -rf /var/www/html
 ln -fs /vagrant/html /var/www/html
fi
if ! [ -L /etc/nginx/conf.d ]; then
 rm -rf /etc/nginx/conf.d
 ln -fs /vagrant/conf.d /etc/nginx/conf.d
fi
