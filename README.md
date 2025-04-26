# Basic Firewall Setup (UFW)[Uncomplicated firewall] on Linux

This project demonstrates how to set up a basic firewall using ufw(uncomplicated firewall) on a linux server
========================================================
Commands USED: 

- Install ufw
- Enable ufw
- allow SSH (port 22)
- allow HTTP & HTTPS (port 80,443 respectively)
- Set default deny incoming and allow outgoing
- view firewall status using verbose
========================================================

Create a folder name vpn-firewall-walkthrough using 
-> mkdir vpn-firewall-walthrough

use cd Command to change to that directory using
-> cd vpn-firewall-walkthrough

========================================================
Setup Script:

You can run the provided 'firewall_setup.sh' script to automate the setup.

Then execute firewall_setup.sh using 
chmod +x firewall_setup.sh

./firewall_setup.sh
========================================================
Else, you can do it manually but this takes time and lot of commands

1) sudo apt update
2) sudo apt install ufw
3) sudo ufw enable (#Firewall is active and enabled on System startup)

4)if needed remote access, allow SSH (Secure Shell), port number is 22
-> sudo ufw allow ssh

5)to Allow specific ports like HTTP and HTTPS (HTTP secure), port number for HTTP is 80 and for HTTPS is 443
-> sudo ufw allow 80/tcp
-> sudo ufw allow 443/tcp

6)To deny everything else by default
-> sudo ufw default deny incoming
-> sudo ufw default allow outgoing

7) to check the firewall status
-> sudo ufw status verbose
=========================================================
