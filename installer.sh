#!/bin/bash

#Basic System Utilities

cd ~
sudo apt-get update -qq
sudo apt-get install -yy gdebi

#Installing Google Chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb

#Installing java

sudo apt-get install -yy openjdk-11-jdk
sudo apt-get install -yy openjdk-11-jre

#Installing Snap

sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt-get update -qq
sudo apt install -yy snapd

#Installing Coding Utilities

sudo apt-get update -qq
sudo snap install pycharm-community --classic
sudo snap install atom --classic
sudo snap install sublime-text --classic
sudo snap install code --classic
sudo snap install flutter --classic
flutter channel master
flutter upgrade
sudo apt-get install -yy mysql-server
sudo snap install mysql-workbench-community
sudo apt-get install -yy python3-tk
sudo apt-get install -yy python3-pip
pip3 install Django
pip3 install djangorestframework
pip3 install pymysql


#Final update

sudo apt-get update -qq
sudo apt-get upgrade -qq
sudo apt-get clean
sudo apt-get autoremove
sudo apt-get autoclean
#Installation Done

echo "All Done! Please reboot the computer."
