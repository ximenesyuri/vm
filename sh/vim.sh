#! /bin/bash

sudo apt-get remove vim
sudo apt autoremove
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install vim-gtk3
