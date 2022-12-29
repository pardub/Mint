#!/bin/zsh -xev

sudo apt-get remove docker docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

 sudo apt update -y
 
# Install Docker CE
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
sudo apt -y remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo usermod -aG docker $USER

# To activate Docker completion
sudo mv /usr/share/zsh/vendor-completions/_docker /usr/share/zsh/site-functions

# Delete .zcompdump
rm -f "$HOME"/.config/zsh/.zcompdump
