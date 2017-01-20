#!/usr/bin/env bash
echo Install eclipse...
HOST=$1
DIR_HOME=$2
DOWNLOADS=${DIR_HOME}/Downloads

#Ecipse
ECLIPSE_DOWNLOAD=${DOWNLOADS}/eclipse
mkdir -p ${ECLIPSE_DOWNLOAD}

## INSTALL FOR LINUX ##
ECLIPSE_URL=http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz
sudo wget ${ECLIPSE_URL} -O ${ECLIPSE_DOWNLOAD}/eclipse.tar.gz
sudo tar -zxf ${ECLIPSE_DOWNLOAD}/eclipse.tar.gz -C /opt --owner=root

cat <<APPLICATION | sudo tee /usr/share/applications/eclipse.desktop
[Desktop Entry]
Version=4.6.2
Name=Eclipse Neo for Java EE Developers
Comment=IDE for all seasons
Exec=env UBUNTU_MENUPROXY=0 /opt/eclipse/eclipse
Icon=/opt/eclipse/icon.xpm
Terminal=false
Type=Application
Categories=Utility;Application;Development;IDE
APPLICATION

sudo mkdir -p /home/vagrant/Desktop
sudo cp /usr/share/applications/eclipse.desktop /home/vagrant/Desktop/eclipse.desktop
sudo chmod +x /home/vagrant/Desktop/eclipse.desktop

## CREATE WORKSPACE ##
mkdir -p /home/vagrant/workspace
sudo chmod 777 -R /home/vagrant/workspace