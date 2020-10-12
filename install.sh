#!/bin/bash
# Update
apt update
apt dist-upgrade -y 
apt autoremove -y
wpscan --update
nmap --script-updatedb

# Install Impacket
git clone https://github.com/CoreSecurity/impacket.git
cd ~/impacket
python3 setup.py install
rm -rf ~/impacket

