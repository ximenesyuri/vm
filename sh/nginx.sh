#! /bin/bash

sudo apt-get update -y
sudo apt-get install -y nginx
sudo ln -s /etc/nginx  $HOME/nginx
sudo cp ${BASH_SOURCE%/*}/../files/nginx.conf /etc/nginx/nginx.conf

