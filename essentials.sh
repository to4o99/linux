#!/bin/bash 

# Must have apts 
#sudo apt install wget curl zip unzip

# Git config
#git config --global credential.helper store
#git config --global alias.a '!git add -A && git commit -m'

# Append to bashrc
cat ~/linux/append_to_bashrc.txt >> ~/.bashrc

echo "Don't forget to source .bashrc"
