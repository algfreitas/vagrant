#!/usr/bin/env bash

apt-get update
apt-get -f install -y
apt-get dist-upgrade -y
# Basics packages
apt-get install apt-transport-https ca-certificates curl gnupg lsb-release git-flow -y
# Http package
apt-get install nginx -y
# Dev packages
apt-get install python3-pip python3-setuptools python3-venv python3-wheel python3-dev python3-virtualenv nodejs -y
#
apt clean
apt autoremove -y
# Vagrant user python project
if ! [ -L /home/vagrant/python_project ]; then
 rm -rf /home/vagrant/python_project
 ln -fs /vagrant/python_project /home/vagrant/python_project
fi
# Http server packages
if ! [ -L /var/www/html ]; then
 rm -rf /var/www/html
 ln -fs /vagrant/html /var/www/html
fi
if ! [ -L /etc/nginx/conf.d ]; then
 rm -rf /etc/nginx/conf.d
 ln -fs /vagrant/conf.d /etc/nginx/conf.d
fi

