#!/bin/bash

echo "Updating System"
sudo apt update

echo "Installing ufw"
sudo apt install ufw -y

echo "Enabling ufw"
sudo ufw enable

echo "Allowing SSH"
sudo ufw allow ssh

echo "Allowing HTTP and HTTPS"
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

echo "Setting up default policies"
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Shwoing ufw status"
sudo ufw status verbose
