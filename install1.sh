#!/bin/bash -xev

# +---------+
# | Install |
# +---------+

sudo apt update -y
sudo apt upgrade -y
echo "$USER ALL=(ALL:ALL) ALL" | sudo EDITOR='tee -a' visudo
echo "Defaults:$USER timestamp_timeout=120" | sudo EDITOR='tee -a' visudo

# Add dns from https://dns.watch/
sudo echo 'nameserver 84.200.69.80' | sudo tee -a /etc/resolv.conf
sudo echo 'nameserver 84.200.70.40' | sudo tee -a /etc/resolv.conf

mkdir -p "$HOME"/.config/zsh
cd || exit

# sudo reboot
