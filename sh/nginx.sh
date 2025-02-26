#! /bin/bash

sudo apt-get update
sudo apt-get install nginx
sudo ln -s /etc/nginx  $HOME/nginx
sudo cp ${BASH_SOURCE%/*}/../files/nginx.conf /etc/nginx/nginx.conf

