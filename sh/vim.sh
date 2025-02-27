#! /bin/bash

sudo apt-get remove -y vim
sudo apt autoremove -y
sudo add-apt-repository ppa:jonathonf/vim -y
sudo apt-get update -y
sudo apt-get install -y vim-gtk3
