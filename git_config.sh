#!/bin/bash

# Prompts
echo 'Git Credentials'
read -p 'Username: ' username
read -p 'Email: ' email

git config --global user.name $username
git config --global user.email $email

ssh-keygen

