#!/bin/bash
####################################################################################
################# Script for installing Ubuntu 20.04 LTS Essentials ################
######################### Author: Md. Hasibul Hasan Shovo ##########################
########################## Email: hasibulhshovo@gmail.com ##########################
####################################################################################

echo -e "\n---- Fetch available updates & upgrade packages  ----"

sudo apt update && sudo apt upgrade

echo -e "\n---- Install VLC Media Player, GIMP for Image Editing, GPARTED for Disk Management, Synaptic for Advance Package Management, WGET for downloading files  ----"

sudo apt install vlc gimp gparted synaptic wget

echo -e "\n---- Install Google Chrome ----"

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

echo -e "\n---- Install Brave Browser ----"

sudo apt install curl

sudo curl https://brave-browser-apt-release.s3.brave.com/brave-core.asc| gpg --dearmor > brave-core.gpg

sudo install -o root -g root -m 644 brave-core.gpg /etc/apt/trusted.gpg.d/

sudo apt -y install curl software-properties-common apt-transport-https

sudo apt update && sudo apt upgrade

sudo apt install brave-browser


echo -e "\n---- Install Anydesk ----"

sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -

sudo apt install anydesk

echo -e "\n---- Install Skype ----"

sudo wget https://go.skype.com/skypeforlinux-64.deb

sudo apt install ./skypeforlinux-64.deb

echo -e "\n---- Install Ubuntu Media Codecs ----"

sudo apt install ubuntu-restricted-extras

echo -e "\n---- Install Preload ----"

sudo apt install preload

echo -e "\n---- Install Git ----"

sudo apt install git

echo -e "\n---- Install GNOME Tweaks ----"

sudo apt-add-repository universe

sudo apt install gnome-tweak-tool

sudo apt search gnome-shell-extension

echo -e "\n---- Install Flameshot ----"

sudo apt install flameshot

echo -e "\n---- Install Microsoft Visual Studio Code ----"

sudo apt install software-properties-common apt-transport-https wget

sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sudo apt install code

echo -e "\n---- Fetch available updates & upgrade packages  ----"

sudo apt update && sudo apt upgrade
