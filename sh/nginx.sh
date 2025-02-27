#! /bin/bash

sudo apt-get update -y
sudo apt-get install -y nginx
sudo ln -s /etc/nginx  $HOME/nginx
sudo cp ${BASH_SOURCE%/*}/../files/nginx/nginx.conf /etc/nginx/nginx.conf
sudo cp ${BASH_SOURCE%/*}/../files/nginx/default.nginx.conf /etc/nginx/default.conf
sudo sed -i "s/{USER}/$USER/g" /etc/nginx/nginx.conf
sudo mkdir -p /etc/nginx/log
sudo mkdir -p /etc/nginx/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=US/ST=State/L=City/O=Organization/OU=OrgUnit/CN=example.com"
echo "0 0 1 1 * sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj '/C=US/ST=State/L=City/O=Organization/OU=OrgUnit/CN=example.com'" | sudo tee /etc/cron.d/nginx_self_ssl
sudo service nginx restart
