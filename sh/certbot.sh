#! /bin/bash

sudo apt-get install -y certbot
sudo apt-get install -y python3-certbot-nginx
echo "0 0,12 * * * root certbot renew --quiet" | sudo tee /etc/cron.d/certbot
