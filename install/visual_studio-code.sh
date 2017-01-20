#!/usr/bin/env bash
echo Install MS Visual Studio Code...
HOST=$1
DIR_HOME=$2
DOWNLOADS=${DIR_HOME}/Downloads

#install MS Visual Studio Code
echo Downloading MS Visual Studio Code...
CODE_DOWNLOAD=${DOWNLOADS}/msvccode
mkdir -p ${CODE_DOWNLOAD}

CODE_URL=https://az764295.vo.msecnd.net/stable/ee428b0eead68bf0fb99ab5fdc4439be227b6281/code_1.8.1-1482158209_amd64.deb
sudo wget ${CODE_URL} -O ${CODE_DOWNLOAD}/code_1.8.1.deb
sudo dpkg -i ${CODE_DOWNLOAD}/code_1.8.1.deb

# known bug
sudo apt-get install -y -qq libxss1
sudo apt-get install -y -qq libgconf-2-4