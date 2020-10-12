#!/bin/bash
# Run as root
echo "blacklist r8188eu" >> "/etc/modprobe.d/realtek.conf"
git clone https://github.com/aircrack-ng/rtl8188eus.git
cd ~/rtl8188eus
make && make install
rm -rf ~/rtl8188eus
