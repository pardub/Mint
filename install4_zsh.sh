#!/bin/bash -xev

# Zsh
sudo apt install -y zsh
sudo apt install -y  util-linux

# zsh default shell
# sudo chsh -s /bin/zsh marc ## replaced by the command below
sudo chsh -s $(which zsh) $USER

cd $HOME
if [ -e "$HOME"/.zshenv ]
then rm "$HOME"/.zshenv
fi

if [ ! -e "$HOME"/.cache/zsh/history ]
then 
mkdir -p "$HOME"/.cache/zsh || exit
touch "$HOME"/.cache/zsh/history
fi

# Download .zshenv
cd "$HOME" || exit
wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/dotfiles/.zshenv

# Download .zshrc
cd "$HOME"/.config/zsh || exit
wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/dotfiles/.zshrc

# Download .aliases
cd "$HOME"/.config/zsh || exit
wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/dotfiles/.aliases

# Download zsh-functions
cd "$HOME"/.config/zsh || exit
wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/dotfiles/zsh-functions

# Download init.vim
cd "$HOME"/.config/nvim || exit
wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/dotfiles/init.vim

#sudo reboot

# install Atuin "Magical shell history "
bash <(curl https://raw.githubusercontent.com/atuinsh/atuin/main/install.sh)
echo 'eval "$(atuin init zsh)"' >> ~/.config/zsh/.zshrc

############## script 3 ##############

# Install pluging zsh-syntax-highlighting
#mkdir -p "$ZDOTDIR/plugins" || exit
#cd "$ZDOTDIR/plugins" || exit
#sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

# Install pluging zsh-autosuggestions
#cd "$ZDOTDIR/plugins" || exit
#sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git

#sudo reboot
