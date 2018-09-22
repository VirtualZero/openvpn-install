#!/bin/bash

sudo sysctl net.ipv4.ip_forward=1
echo ""
echo "Copy & paste this into the config file that opens:"
read -p 'DEFAULT_FORWARD_POLICY="ACCEPT"' openfile
sudo nano /etc/default/ufw
echo "Copy & paste from openvpn_rules.tsxt into config file that opens:"
sudo nano /etc/ufw/before.rules
sudo ufw allow 1194/udp
