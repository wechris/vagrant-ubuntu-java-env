#!/usr/bin/env bash

# update/upgrade and install Ubuntu desktop
echo install Desktop...
sudo apt-get upgrade -y
sudo apt-get install -y linux-headers-$(uname -r)
sudo apt-get install -y --no-install-recommends ubuntu-desktop
sudo apt-get install -y gnome-panel
sudo apt-get install -y unity-lens-applications
#sudo gconftool -s /apps/gnome-terminal/profiles/Default/use_system_font -t bool false