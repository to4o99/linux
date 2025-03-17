#!/bin/bash

sudo apt update && sudo apt upgrade

# Must have apts 
sudo apt install wget curl zip unzip

# Install nerd font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/blob/041ef9202ccdba9705b9f96a1fc838b79822a93d/patched-fonts/RobotoMono/Regular/RobotoMonoNerdFont-Regular.ttf

fc-cache -fv

# install starship
curl -sS https://starship.rs/install.sh | sh

echo '' >> ~/.bashrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc

source ~/.bashrc
