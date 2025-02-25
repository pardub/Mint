#!/bin/bash -xev
mkdir -p ~/.ssh/config
## See for cargo install with script to bypass questions during installation.

# +--------------+
# | Flatpak apps |
# +--------------+

# Transmission Torrent
flatpak install flathub com.transmissionbt.Transmission -y 

# Remotely manage the Transmission BitTorrent client
flatpak install flathub io.github.TransmissionRemoteGtk -y 

# Record and edit audio files
flatpak install flathub org.audacityteam.Audacity -y 

# SFTP application
flatpak install flathub org.filezillaproject.Filezilla -y 

# Editing  dconf configuration database
flatpak install flathub ca.desrt.dconf-editor  -y

 # Neovim
 #flatpak install flathub io.neovim.nvim -y
 
# Manage Flatpak permissions
flatpak install flathub com.github.tchx84.Flatseal -y

# Firefox
 flatpak install flathub org.mozilla.firefox -y

# Mail Client Evolution ##Need flatub version to get Etesync ( Not available in Fedora flatpak repo)
flatpak install flathub org.gnome.evolution -y

# Metadata Cleaner - View and clean metadata in files
flatpak install flathub fr.romainvigier.MetadataCleaner -y

# Standard Notes flatpak install
flatpak install flathub org.standardnotes.standardnotes -y

# Extensions Manager
#flatpak install flathub com.mattjakeman.ExtensionManager -y

# Telegram Desktop
# flatpak install flathub org.telegram.desktop -y

# Viber Desktop
# flatpak install flathub com.viber.Viber -y

# Document viewer
flatpak install flathub org.kde.okular -y

# PDF Merging, Rearranging, Splitting, Rotating and Cropping
flatpak install flathub com.github.jeromerobert.pdfarranger -y

# Ebook reader
flatpak install flathub com.github.babluboy.bookworm -y

# flashcard program using spaced repetition
flatpak install flathub net.ankiweb.Anki -y

# Streaming with rclone
flatpak install flathub io.mpv.Mpv -y

# Tor browser launcher
flatpak install flathub com.github.micahflee.torbrowser-launcher -y

### Checksum verification tool
flatpak install flathub org.gtkhash.gtkhash -y

# Gnome certificate manager and GUI for OpenPGP 
#flatpak install flathub org.gnome.seahorse.Application -y

# Password Manager
flatpak install flathub org.keepassxc.KeePassXC -y

# Bitwarden
flatpak install flathub com.bitwarden.desktop -y

# Download Vorta backup
flatpak install flathub com.borgbase.Vorta -y
# change permisions from 644 to 600 on ~/.ssh/config to avoid error "Connection closed by remote host"
# see https://github.com/borgbase/vorta/issues/1345
cd ~/.ssh 
chmod 600 config || exit
cd

# Virtualization made simple
# flatpak install flathub org.gnome.Boxes -y

# Intellij Idea Community
#flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y

# IRC Client
flatpak install flathub io.github.Hexchat -y

# An Open Source YouTube app for privacy
flatpak install flathub io.freetubeapp.FreeTube -y

# Libre Office
#flatpak install flathub org.libreoffice.LibreOffice -y

# Open Office
flatpak install flathub org.onlyoffice.desktopeditors -y

# nmap security scanner
flatpak install flathub org.nmap.Zenmap -y

# Edit screenshots
flatpak install flathub com.github.maoschanz.drawing -y

# A simple and modern eBook viewer
# flatpak install flathub com.github.johnfactotum.Foliate -y

# Chromium Web Browser
flatpak install flathub org.chromium.Chromium -y

# A simple and lightweight translator that allows you to translate and speak text using Google, Yandex Bing, LibreTranslate and Lingva. 
flatpak install flathub io.crow_translate.CrowTranslate -y


# +---------+
# | Install |
# +---------+


# Rust install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# A simple, fast and user-friendly alternative to 'find' 
cargo install fd-find


# add repo to install Foliate ( ebook reader)
sudo add-apt-repository ppa:apandada1/foliate -y
sudo apt update -y
sudo apt install foliate -y

# Man page with colors
sudo apt install most -y

# Command-line JSON processor 
# jq is like sed for JSON data
# you can use it to slice and filter and map
# and transform structured data with the same 
# ease that sed, awk, grep and friends
# let you play with text
sudo apt install jq -y

# command-line HTTP client, similar to Curl
sudo apt install httpie -y

# network scanner 
sudo apt install nmap -y

# process viewer
sudo apt install htop -y

# Disks management
sudo apt install gparted -y

# Shell script analysis tool
sudo apt install shellcheck -y

# distributed version control system
sudo apt install  git -y

# Disk Usage User-friendly, colorful output
# https://github.com/muesli/duf
sudo apt install  duf -y
cd || exit

# A simple, fast and user-friendly alternative to 'find'
sudo apt install  fd-find -y

# VOIP 
sudo apt install linphone -y

# Collection of Linux utilities
sudo apt install util-linux -y

# Zsh
sudo apt install zsh -y

# colordiff
sudo apt install colordiff -y

# Development tools
sudo apt install build-essential -y

# Neovim 
sudo apt install neovim -y

sudo apt install  ansible -y

# TeamViewer alternative
# https://github.com/rustdesk/rustdesk

# Deduplicating backup program
sudo apt install borgbackup -y

# Simple, configuration-driven backup software for servers and workstations.
sudo apt install borgmatic -y

# Collaborative cheatsheets for console commands
sudo apt install npm -y
sudo npm install -g tldr

# to update tldr
tldr -u 

# IRC client
# sudo dnf -y install weechat -y

# Tools for configuring WireGuard
sudo apt install wireguard-tools -y

# A cat(1) clone with syntax highlighting and Git integration.
sudo apt install bat -y

# A modern replacement for ls
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg || exit
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list || exit
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list || exit
sudo apt update -y 
sudo apt install eza -y || exit

# youtube -cli
sudo add-apt-repository ppa:tomtomtom/yt-dlp -y
sudo apt install yt-dlp -y

# rsync for cloud storage
sudo apt install rclone -y

# Collection of libraries and tools to process multimedia content such as audio, video, subtitles and related metadata.
####sudo apt install ffmpeg -y

# change MAC addres
#sudo apt install macchanger  -y

# Password Manager
sudo apt install pass -y

# Gui for Pass
sudo apt install qtpass -y

# Tool necessary to use wireguard on Debian
sudo apt install openresolv -y

# Add Repo Veracrypt
#sudo add-apt-repository ppa:unit193/encryption -y
#sudo apt install veracrypt -y

# Install pip3
sudo apt install python3-pip -y

# Install RSS plugin for Evolution
sudo apt install evolution-rss -y

# Calibre for Mint
sudo apt install libxcb-cursor0  -y
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin


# +--------------------------+
# | Tools installed with Git |
# +--------------------------+

# A command-line fuzzy finder
### SEE DEFUALT ANSWERS FOR SCRIPT INSTALL
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# +--------+
# | Vscode |
# +---------+

sudo apt-get install wget gpg -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https -y
sudo apt update -y 
sudo apt install code -y

# +---------------------------------------+
# | Manual install - Intellj Idea Toolbox |
# +---------------------------------------+

cd || exit
tb_releases_url='https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
download_url=$(curl --silent $tb_releases_url | jq --raw-output '.TBA[0].downloads.linux.link')
curl --output jetbrains-toolbox.tgz --progress-bar --location $download_url
cd /opt
sudo tar -xvzf ~/jetbrains-toolbox.tgz
cd /opt/jetbrains-toolbox-*
./jetbrains-toolbox
cd || exit
rm -rf jetbrains-toolbox.tgz

# +--------+
# | Rclone |
# +---------+

# Fuse file system
sudo apt install fuse -y

sudo mkdir -p /mnt/rclone
sudo mkdir -p /mnt/rclone_unencrypted
sudo mkdir -p /mnt/Dropbox
#sudo mkdir -p /mnt/Onedrive
sudo chown $USER:$USER /mnt/rclone
sudo chown $USER:$USER /mnt/rclone_unencrypted
sudo chown $USER:$USER /mnt/Dropbox
#sudo chown $USER:$USER /mnt/Onedrive

# Firewall
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

# +----------------+
# |  Emacs Config  |
# +----------------+
# Tools for compiling Emacs
# sudo apt install -y autoconf make gcc texinfo libgtk-3-dev libxpm-dev libjpeg-dev libgif-dev libtiff5-dev libgnutls28-dev libncurses5-dev libjansson-dev \
# libharfbuzz-dev libharfbuzz-bin imagemagick libmagickwand-dev libxaw7-dev libgccjit-11-dev libgccjit0 gcc-11 libjansson4 libjansson-dev xaw3dg-dev texinfo libx11-dev libtree-sitter-dev libtree-sitter0

#rm -rf ~/.emacs.d
#git clone https://github.com/plexus/chemacs2 ~/.emacs.d

# Download .emacs-profiles.el
#cd "$HOME" || exit
#wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/dotfiles/.emacs-profiles.el


git clone git://git.savannah.gnu.org/emacs.git ~/git/emacs
cd ~/git/emacs
git pull

sudo apt update
sudo apt install -y autoconf make gcc texinfo libgtk-3-dev libwebkit2gtk-4.0-dev libxpm-dev libjpeg-dev \
     libgif-dev libtiff5-dev libgnutls28-dev libncurses5-dev libjansson-dev libharfbuzz-dev libharfbuzz-bin imagemagick \
     libmagickwand-dev libxaw7-dev libgccjit-11-dev libgccjit0 gcc-11 libjansson4 libjansson-dev xaw3dg-dev texinfo libx11-dev libtree-sitter-dev libtree-sitter0

export CC="gcc-11"

./autogen.sh

./configure --with-native-compilation -with-json --with-modules --with-harfbuzz --with-compress-install \
   --with-threads --with-included-regex --with-x-toolkit=lucid --with-zlib --with-jpeg --with-png --with-imagemagick --with-tiff --with-xpm --with-gnutls \
   --with-xft --with-xml2 --with-mailutils

make -j 8
sudo make install

# For convenience, you may want to create a symlink to 'local/share/Trash' in your home directory:

cd ~/
ln -s ~/.local/share/Trash .


# +----------------+
# | Virtualization |
# +----------------+

sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager  -y
sudo usermod -aG kvm $USER
sudo usermod -aG libvirt $USER

# library for accessing and modifying VM disk images
# sudo apt install libguestfs-tools -y

# Install OpenJdk 11
sudo apt install openjdk-11-jdk  -y

# +---------------+
# | Configuration |
# +---------------+

### SET UP VS CODE TO USE NEW FONTS
### RECOMMENDED SETTINGS FOR THE FONT
### Size: 13
### Line spacing: 1.2

# need to list the keys to create the .gnupg directory
gpg --list-keys

# Create gpg-agent.conf file and caches the password for 1 week
sudo touch $HOME/.gnupg/gpg-agent.conf
sudo echo 'default-cache-ttl 604800'             | sudo tee -a $HOME/.gnupg/gpg-agent.conf
sudo echo 'max-cache-ttl 604800'                 | sudo tee -a $HOME/.gnupg/gpg-agent.conf

# CHANGE HOSTNAME
sudo hostnamectl set-hostname laptop


# Create Neovim config file
mkdir -p $HOME/.config/nvim/ || exit
touch init.vim $HOME/.config/nvim/ || exit


# OPENSNITCH
sudo apt install python3-pip -y
sudo mkdir -p /opt/opensnitch || exit
cd /opt/opensnitch || exit
sudo wget https://github.com/evilsocket/opensnitch/releases/download/v1.6.0/opensnitch_1.6.0.1-1_amd64.deb
sudo wget https://github.com/evilsocket/opensnitch/releases/download/v1.6.0/python3-opensnitch-ui_1.6.0.1-1_all.deb
sudo apt install -y ./opensnitch*.deb ./python3-opensnitch-ui*.deb
sudo systemctl enable --now opensnitch || exit
sudo systemctl start opensnitch || exit
cd || exit

# Opensnitch doesn't start
# see https://github.com/evilsocket/opensnitch/issues/860#issuecomment-1471565761
pip3 uninstall protobuf

# Vpn connections issues
# https://github.com/evilsocket/opensnitch/issues/454
# Fix: Go to Gui -> Preferences -> Nodes -> tick "Debug invalid connections". That will allow pop up to accept vpn outgoing connections.


# Opensnitch dark mode
#pip3 install grpcio-tools
#pip3 install unicode_slugify
#python3 -m pip install qt-material
#pip3 install qt-material

# INSTALL JETBRAINS MONO FONTS IN ~/.local/share/fonts
mkdir -p /usr/share/fonts/jetbrains
cd /tmp
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
sudo unzip /tmp/JetBrainsMono.zip -d /usr/share/fonts/jetbrains
fc-cache -v
cd || exit


# +-------------------+
# | Wireguard Config |
# +-------------------+

# 1- Download config file
# 2- Rename config file to Tokyo.conf
# 3- Move file to root/etc/wireguard
 # sudo cp $HOME/Downloads/*.conf /etc/wireguard
# 5- Activate Wireguard tunnel
 # sudo wg-quick up /etc/wireguard/Tokyo.conf
# 6- Autostart Wireguard using Systemd after reboot
 # sudo systemctl enable wg-quick@Tokyo
# 7- to switch betwween tunnels
 # wgswitch Tokyo London
 ## See wgswitch function in zsh-functions

# Change the first day of the week from Sunday to Monday
# cd /usr/share/i18n/locales
# open file LANG=en_US.UTF-8
# Look for  block we want starts with LC_TIME and ends with END LC_TIME
# Add above END LC_TIME "first_weekday 2" wihout quotes
# run sudo locale-gen

# +---------+
# | Emacs   |
# +---------+

# Install compilation tools for Emacs
sudo apt install  build-essential texinfo libgccjit0 libgccjit-10-dev libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev gnutls-dev libgtk-3-dev -y
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

sudo add-apt-repository ppa:kelleyk/emacs -y
sudo apt install emacs28-nativecomp -y

# Install npm ( for doom Emacs)
sudo apt install npm
sudo npm install -g marked

# To delete Doom Emacs error "The installed ripgrep binary was not built with support for PCRE lookaheads"
sudo apt remove ripgrep -y


# To use Vterm in Emacs
sudo apt install libvterm-dev -y
sudo apt install cmake -y

# Necessary to install for proper use with org-roam
sudo apt install graphviz -y

# Emacs python packages
pip install pytest
pip install nose
pip install black
pip install pyflake
pip install isort 

# Miniconda install
mkdir -p ~/miniconda3
cd ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

# Privacy tools
# https://sandlab.cs.uchicago.edu/fawkes/
pip install fawkes

# Install pgcli
sudo apt install libpq-dev python-dev-is-python3 -y
pip install pgcli


# +---------+
# | Python  |
# +---------+

pip install pylint

# +------------+
# |  Ripgrep   |
# +------------+

cd /tmp
# Ensure necessary tools are installed
if ! command -v cargo &> /dev/null; then
    echo "Cargo is required. Please install Rust and Cargo and try again."
    exit 1
fi

# Install PCRE2 development library
sudo apt update
sudo apt install -y libpcre2-dev

# Clone the ripgrep repository
git clone https://github.com/BurntSushi/ripgrep.git
cd ripgrep

# Build ripgrep with PCRE2 support
cargo build --release --features 'pcre2'

# Install the built binary
sudo cp target/release/rg /usr/local/bin/

# Verify installation
rg --version

echo "ripgrep with PCRE2 support installed successfully."


# sudo reboot

# +------------------------+
# |  Battery optimization  |
# +------------------------+

sudo git clone https://github.com/AdnanHodzic/auto-cpufreq.git /opt/auto-cpufreq
cd /opt/auto-cpufreq
sudo ./auto-cpufreq-installer
sudo auto-cpufreq --install



