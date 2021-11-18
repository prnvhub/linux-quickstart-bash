#!/bin/bash

cd ~

sudo service mysql stop
sudo /etc/init.d/apache2 stop

sudo /opt/lampp/lampp start

google-chrome www.localhost/phpmyadmin/

cd /opt/lampp

sudo ./manager-linux-x64.run
