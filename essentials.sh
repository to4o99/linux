#!/bin/bash

# Must have apts 
sudo apt install wget curl

# Make grub wait 1 sec
sed -i 's/GRUB_TIMEOUT=1/GRUB_TIMEOUT=0/g' /etc/default/grub 

sudo update-grub
