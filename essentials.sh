#!/bin/bash

# Must have apts 
sudo apt install wget curl

# Git config
git config --global credential.helper store
git config --global alias.a '!git add -A && git commit -m'

