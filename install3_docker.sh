#!/bin/zsh -xev

sudo apt-get remove docker docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
sudo mkdir -p /etc/apt/keyrings
sudo apt -y install docker*
  
sudo apt-get update

sudo systemctl start docker
sudo systemctl enable docker

# Add USER to docker group
sudo usermod -aG docker ${USER}

# To activate Docker completion
sudo mv /usr/share/zsh/vendor-completions/_docker /usr/share/zsh/site-functions

# Delete .zcompdump
rm -f "$HOME"/.config/zsh/.zcompdump


