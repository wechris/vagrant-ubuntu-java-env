#!/usr/bin/env bash
GIT_USER=$1
DIR_HOME=$2

echo Install Git...
#Git
sudo apt-get install -y -qq git
#sudo ssh-keygen -f ${DIR_HOME}/.ssh/id_rsa -t rsa -N "" -C "$GIT_USER"
if [ ! -f /home/vagrant/.ssh/id_rsa ]; then
    sudo ssh-keygen -f ${DIR_HOME}/.ssh/id_rsa -t rsa -N "" -C "$GIT_USER"
  fi
git config --global user.name "$GIT_USER"
