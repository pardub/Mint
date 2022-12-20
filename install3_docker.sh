#!/bin/zsh -xev

sudo apt-get remove docker docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
sudo mkdir -p /etc/apt/keyrings
sudo apt install docker*
  
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl start docker
sudo systemctl enable docker

# Docker-compose install
sudo apt-get update
sudo apt-get install docker-compose-plugin

# Add USER to docker group
sudo usermod -aG docker ${USER}

# To activate Docker completion
sudo mv /usr/share/zsh/vendor-completions/_docker /usr/share/zsh/site-functions

# Delete .zcompdump
rm -f "$HOME"/.config/zsh/.zcompdump


