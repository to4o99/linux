#!/bin/bash

sudo apt update && sudo apt upgrade

# Must have apts 
sudo apt install wget curl zip unzip

# Apts for Ubuntu
sudo apt install gnome-tweaks gnome-shell-extension-manager

# Install nerd font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/UbuntuMono/Regular/UbuntuMonoNerdFont-Regular.ttf

fc-cache -fv

# install starship
curl -sS https://starship.rs/install.sh | sh

echo '' >> ~/.bashrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc

source ~/.bashrc
