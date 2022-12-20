#!/bin/bash -xev

# +---------+
# | Install |
# +---------+

# ADd Flatpak repo

# +--------------+
# | Flatpak apps |
# +--------------+

# Transmission Torrent
flatpak install -y flathub com.transmissionbt.Transmission

# Remotely manage the Transmission BitTorrent client
flatpak install -y flathub io.github.TransmissionRemoteGtk

# Record and edit audio files
flatpak install  -y flathub org.audacityteam.Audacity

# SFTP application
flatpak install  -y flathub org.filezillaproject.Filezilla

# Editing  dconf configuration database
flatpak install -y  flathub ca.desrt.dconf-editor

 # Neovim
 flatpak install -y flathub io.neovim.nvim
 
# Manage Flatpak permissions
flatpak install -y flathub com.github.tchx84.Flatseal

# Firefox
# flatpak install -y flathub org.mozilla.firefox

# Mail Client Evolution ##Need flatub version to get Etesync ( Not available in Fedora flatpak repo)
flatpak install -y flathub org.gnome.evolution

# Metadata Cleaner - View and clean metadata in files
flatpak install -y flathub fr.romainvigier.MetadataCleaner

# Standard Notes flatpak install
flatpak install -y flathub org.standardnotes.standardnotes

# Extensions Manager
flatpak install -y flathub com.mattjakeman.ExtensionManager

# Telegram Desktop
# flatpak install -y flathub org.telegram.desktop

# Viber Desktop
# flatpak install -y flathub com.viber.Viber

# Document viewer
flatpak install -y flathub org.kde.okular

# PDF Merging, Rearranging, Splitting, Rotating and Cropping
flatpak install -y flathub com.github.jeromerobert.pdfarranger

# Ebook reader
flatpak install -y flathub com.github.babluboy.bookworm

# flashcard program using spaced repetition
flatpak install -y flathub net.ankiweb.Anki

# Streaming with rclone
flatpak install -y flathub io.mpv.Mpv

# Tor browser launcher
flatpak install -y flathub com.github.micahflee.torbrowser-launcher

### Checksum verification tool
flatpak install -y flathub org.gtkhash.gtkhash

# Gnome certificate manager and GUI for OpenPGP 
flatpak install -y flathub org.gnome.seahorse.Application

# Password Manager
flatpak install -y flathub org.keepassxc.KeePassXC

# Bitwarden
flatpak install -y flathub com.bitwarden.desktop

# Download Vorta backup
flatpak install -y flathub com.borgbase.Vorta

# Download Jami Voip client
#sudo dnf -y config-manager --add-repo https://dl.jami.net/nightly/fedora_34/jami-nightly.repo
#flatpak install -y flathub net.jami.Jami

# Virtualization made simple
flatpak install -y flathub org.gnome.Boxes

# Intellij Idea Community
#flatpak install -y flathub com.jetbrains.IntelliJ-IDEA-Community

# IRC Client
flatpak install -y flathub io.github.Hexchat

# Emacs
flatpak install -y flathub org.gnu.emacs

# An Open Source YouTube app for privacy
flatpak install -y flathub io.freetubeapp.FreeTube

# Libre Office
flatpak install -y flathub org.libreoffice.LibreOffice

# Open Office
flatpak install -y flathub org.onlyoffice.desktopeditors

# nmap security scanner
flatpak install -y flathub org.nmap.Zenmap

# Edit screenshots
flatpak install -y flathub com.github.maoschanz.drawing

# A simple and modern eBook viewer
flatpak install -y flathub com.github.johnfactotum.Foliate

# Chromium Web Browser
flatpak install -y flathub org.chromium.Chromium


# Add languages pack for Flatpak apps
# https://www.noulakaz.net/2020/05/09/libreoffice-with-flatpak-adding-dictionaries-for-other-languages/
# https://www.ctrl.blog/entry/flatpak-locale-dictionaries.html
#flatpak install -y  --reinstall flathub org.freedesktop.Platform.Locale/x86_64/22.08
#flatpak config languages --set "en;fr"
#flatpak -y update

# Dotfiles management tool "chezmoi"
# sh -c "$(curl -fsLS chezmoi.io/get)"

### web console for Linux servers
#sudo dnf -y install cockpit


# NextDNS CLI client
# Config ==> https://github.com/nextdns/nextdns/wiki/RPM-Based-Distribution
#sudo curl -Ls https://repo.nextdns.io/nextdns.repo -o /etc/yum.repos.d/nextdns.repo
#sudo dnf -y install -y nextdns

# Man page with colors
sudo apt install -y most

# network scanner 
sudo apt install -y nmap

# Backup system
#sudo dnf -y install timeshift

# Shell script analysis tool
sudo apt install -y shellcheck

# Create containers
#sudo dnf -y install distrobox

# distributed version control system
sudo apt install -y  git

# Disk Usage User-friendly, colorful output
# https://github.com/muesli/duf
sudo apt install -y  duf
cd || exit

# Log processing
sudo apt install -y rsyslog


# A simple, fast and user-friendly alternative to 'find'
sudo apt install -y  fd-find

#sudo dnf -y install visudo
#sudo dnf -y install --allowerasing vim-default-editor

# Gparted is the GNOME Partition Editor
sudo apt install -y gparted

# VOIP 
sudo apt install -y linphone

# Collection of Linux utilities
sudo apt install -y util-linux

# Zsh
sudo apt install -y zsh

# Terminal file manager
sudo apt install -y nnn 

# Terminal file manager
sudo apt install -y ranger 

# Browser
# sudo dnf -y install chromium-browser-privacy

# Development tools
sudo apt install -y build-essential 

sudo apt install -y  ansible

# TeamViewer alternative
# https://github.com/rustdesk/rustdesk


# Deduplicating backup program
sudo apt install -y borgbackup

# Simple, configuration-driven backup software for servers and workstations.
sudo apt install -y borgmatic

# Collaborative cheatsheets for console commands
sudo apt install -y tldr

# IRC client
# sudo dnf -y install weechat

# Tools for configuring WireGuard
sudo apt install -y wireguard-tools

# To enable the Wireguard connection
# sudo su
# cd /etc/wireguard# add Windscribe conf file here like Tokyo.conf
# exit sudo and back to user mode
# nmcli connection up Tokyo
# nmcli connection doww Tokyo

# A cat(1) clone with syntax highlighting and Git integration.
sudo apt install -y bat

# A modern replacement for ls
sudo apt install -y exa

# A command-line fuzzy finder
sudo apt install -y fzf

# youtube -cli
sudo apt install -y yt-dlp

# Text Calendar
sudo apt install -y calcurse

# rsync for cloud storage
sudo apt install -y rclone

# Gui for rclone
sudo apt install -y rclone-browser

# Open Source Continuous File Synchronization
sudo apt install -y syncthing

#sudo dnf -y install dropbox
#sudo dnf -y install chrome-remote-desktop

### sudo apt install -y fuse

# Kde certificate manager and GUI for OpenPGP 
#sudo dnf -y install kleopatra

# Collection of libraries and tools to process multimedia content such as audio, video, subtitles and related metadata.
sudo apt install -y ffmpeg

# GnuPG Made Easy
# sudo apt install -y gpgme

# Lynis - Security auditing and hardening tool, for UNIX-based systems
sudo apt install -y lynis

# change MAC addres
#sudo apt install -y macchanger 

# Etesync repo && Etesync add-on for Evolution #
# Not necessary as it is integrated in the Flatpak Evolution
# sudo dnf -y copr enable daftaupe/etesync-rs
# sudo dnf -y install evolution-etesync

# Password Manager
sudo apt install -y pass

# Gui for Pass
sudo apt install -y qtpass

# Redshift adjusts the color temperature of the screen
# sudo dnf -y install redshift


# CODECS
#sudo dnf -y install x264
#sudo dnf -y groupupdate Multimedia
#sudo dnf -y install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
#sudo dnf -y install lame\* --exclude=lame-devel
#sudo dnf -y group upgrade --with-optional Multimedia

# Download Visual Studio Code

# +----------------+
# | Virtualization |
# +----------------+

sudo apt install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager
sudo usermod -aG kvm $USER
sudo usermod -aG libvirt $USER


# Install OpenJdk 11
sudo apt install -y java-11-openjdk-devel.x86_64 


# +---------------------------------------+
# | Manual install - Intellj Idea Toolbox |
# +---------------------------------------+

# https://www.jetbrains.com/toolbox-app/
# https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.24.12080.tar.gz
# cd /opt/
# sudo tar -xvzf ~/Downloads/jetbrains-toolbox-1.20.8804.tar.gz
# sudo mv jetbrains-toolbox-1.20.8804 jetbrains
#cd || exit
#wget  https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.25.12627.tar.gz
#cd /opt
#sudo tar -xvzf ~/jetbrains-toolbox-1.25.12627.tar.gz
#cd jetbrains-toolbox-1.25.12627
#./jetbrains-toolbox
#cd || exit
#rm -rf jetbrains-toolbox-1.25.12627.tar.gz

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

########################################

# Netbeans

# Install pluging zsh-syntax-highlighting
#sudo mkdir -p /usr/share/zsh/plugins
#sudo cd /usr/share/zsh/plugins/
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
# sudo echo "# Load zsh-syntax-highlighting; should be last." >> $ZDOTDIR/.zshrc
#sudo echo '# Load zsh-syntax-highlighting; should be last.'   | sudo tee -a  $ZDOTDIR/.zshrc
#sudo echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null" >> $ZDOTDIR/.zshrc
#sudo echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null" | sudo tee -a  $ZDOTDIR/.zshrc


# Install pluging zsh-autosuggestions
#sudo cd /usr/share/zsh/plugins/ || exit
#git clone https://github.com/zsh-users/zsh-autosuggestions.git
#sudo echo "# Load zsh-autosuggestions; should be last." >> $ZDOTDIR/.zshrc
#sudo echo "# Load zsh-syntax-autosuggestions; should be last." | sudo tee -a  $ZDOTDIR/.zshrc
#sudo echo "source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null" >> $ZDOTDIR/.zshrc
#sudo echo "source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null" | sudo tee -a  $ZDOTDIR/.zshrc


# Install pluging zsh-abbr
#sudo cd /usr/share/zsh/plugins/ || exit
#git clone https://github.com/olets/zsh-abbr
#sudo echo "source /usr/share/zsh/plugins/zsh-abbr/zsh-abbr.zsh 2>/dev/null" >> $ZDOTDIR/.zshrc
#sudo echo "source /usr/share/zsh/plugins/zsh-abbr/zsh-abbr.zsh 2>/dev/null" | sudo tee -a  $ZDOTDIR/.zshr

# Install zsh git-completion
#mkdir -p ~/config/zsh
#cd ~/zsh || exit
#curl -LJO https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
##echo "zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh" >> $HOME/config/zsh/.zshrc
##echo 'fpath=(~/.zsh $fpath)'  >> $HOME/config/zsh/.zshrc
#rm $HOME/config/zsh/.zcompdump
#cd || exit


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
sudo hostnamectl set-hostname Mint

# DISABLING SSH
sudo systemctl stop sshd
sudo systemctl disable sshd

# Disable Firewalld and Setup iptables ####
#cd
#sudo systemctl stop firewalld
#sudo systemctl disable firewalld
#sudo systemctl mask firewalld
#sudo dnf -y install iptables-services
sudo touch /etc/sysconfig/iptables
sudo systemctl enable iptables
sudo systemctl start iptables
wget https://raw.githubusercontent.com/pardub/dotfiles/main/dotfiles/firewall.sh
chmod a+x firewall.sh
sudo ./firewall.sh
sudo service iptables save


# FIREWALL SET UP OPEN/CLOSED PORTS

# VS CODE INSTALL EXTENSIONS
#code --install-extension ginfuru.ginfuru-better-solarized-dark-theme
#code --install-extension ms-azuretools.vscode-docker	
#code --install-extension dbaeumer.vscode-eslint
#code --install-extension redhat.vscode-yaml

# Create Neovim config file
mkdir -p $HOME/.config/nvim/ || exit
touch init.vim $HOME/.config/nvim/ || exit

# SET UP GNOME TERMINAL
# https://ncona.com/2019/11/configuring-gnome-terminal-programmatically/
# We will need this value later, so let’s save it in a variable:

# set up minimize/maximize  window
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

GNOME_TERMINAL_PROFILE=$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F \' '{print $2}')
#gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"$GNOME_TERMINAL_PROFILE"/ font 'Monospace 10'
#gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"$GNOME_TERMINAL_PROFILE"/ font 'MesloLGS NF 10'
#gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"$GNOME_TERMINAL_PROFILE"/ font 'JetBrainsMono NF 10'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"$GNOME_TERMINAL_PROFILE"/ font "JetBrainsMonoMedium Nerd Font 12"
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"$GNOME_TERMINAL_PROFILE"/ use-system-font false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"$GNOME_TERMINAL_PROFILE"/ audible-bell false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"$GNOME_TERMINAL_PROFILE"/ use-theme-colors false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"$GNOME_TERMINAL_PROFILE"/ background-color '#000000'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"$GNOME_TERMINAL_PROFILE"/ foreground-color '#AFAFAF'
#gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"$GNOME_TERMINAL_PROFILE"/ cursor-shape 'I-Beam'


# Disable updates and upgrades in GNOME Software
gsettings set org.gnome.software allow-updates false

# Disable automatically download and install updates
gsettings set org.gnome.software download-updates false

# Disable notifications about software updated in the background
gsettings set  org.gnome.software download-updates-notify false

# Disable check of the very first run of GNOME Software
gsettings set org.gnome.software first-run false

# Disable Remember recent files
gsettings set org.gnome.desktop.privacy remember-recent-files false

# Disable audible bell
gsettings set org.gnome.desktop.wm.preferences audible-bell false

# Show weekday on Gnome
gsettings set org.gnome.desktop.interface clock-show-weekday true

# Show hidden files in files manager
gsettings set org.gtk.Settings.FileChooser show-hidden true

# Send reports of technical problems to the vendor
gsettings set org.gnome.desktop.privacy report-technical-problems false

# Geolocation services are disabled
gsettings set org.gnome.system.location enabled false

# Mouse : Focus on Hover
# https://askubuntu.com/questions/64605/how-do-i-set-focus-follows-mouse
gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy'



# OPENSNITCH
sudo mkdir -p /opt/opensnitch || exit
cd /opt/opensnitch || exit
sudo wget https://github.com/evilsocket/opensnitch/releases/download/v1.5.2/opensnitch_1.5.2-1_amd64.deb
sudo wget https://github.com/evilsocket/opensnitch/releases/download/v1.5.2/python3-opensnitch-ui_1.5.2-1_all.deb
sudo apt install  -y ./opensnitch*.deb ./python3-opensnitch-ui*.deb
sudo systemctl enable --now opensnitch || exit
sudo systemctl start opensnitch || exit
cd || exit

# Opensnitch dark mode
pip3 install grpcio-tools
pip3 install unicode_slugify
#python3 -m pip install qt-material
pip3 install qt-material


# +-------------------+
# | Firefox hardening |
# +-------------------+

flatpak run org.mozilla.firefox -CreateProfile Arkenfox
cd $HOME/.mozilla/firefox
cd *.Arkenfox
wget https://raw.githubusercontent.com/arkenfox/user.js/master/updater.sh
wget https://raw.githubusercontent.com/arkenfox/user.js/master/prefsCleaner.sh
touch user-overrides.js
chmod a+x updater.sh
chmod a+x prefsCleaner.sh
# cd $HOME/.mozilla/firefox/*.Arkenfox/
./updater.sh  -s

# +--------+
# | Rclone |
# +---------+

sudo mkdir -p /mnt/rclone
sudo mkdir -p /mnt/rclone_unencrypted
sudo mkdir -p /mnt/Dropbox
#sudo mkdir -p /mnt/Onedrive
sudo chown $USER:$USER /mnt/rclone
sudo chown $USER:$USER /mnt/rclone_unencrypted
sudo chown $USER:$USER /mnt/Dropbox
#sudo chown $USER:$USER /mnt/Onedrive

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

# Firefox extensions to be installed

# https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
# https://addons.mozilla.org/en-US/firefox/addon/i-dont-care-about-cookies/
# https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/
# https://addons.mozilla.org/en-US/firefox/addon/skip-redirect/
# https://addons.mozilla.org/en-US/firefox/addon/traduzir-paginas-web/
# https://addons.mozilla.org/en-US/firefox/addon/keepassxc-browser/
# https://addons.mozilla.org/en-US/firefox/addon/keepa/

# Folder for sharing content between the laptop and the mobile phone
mkdir -p "$HOME"/Documents/share_laptop_android

# Enabling Selinux enforcing
sudo sed -i 's/SELINUX=disabled/SELINUX=enforcing/' /etc/selinux/config

# INSTALL JETBRAINS MONO FONTS IN ~/.local/share/fonts
#mkdir -p "$HOME"/.local/share/fonts/nerd-fonts
#cd /tmp
#sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip
#sudo unzip /tmp/JetBrainsMono.zip -d ~/.local/share/fonts/nerd-fonts
#fc-cache -v
#cd || exit

# Papirus icon
#wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="/usr/share/icons" sh

# sudo reboot

