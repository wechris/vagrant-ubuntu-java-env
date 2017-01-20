#!/usr/bin/env bash
echo Install ssh-extra...
# setup VBox Guest Additions
sudo /etc/init.d/vboxadd-x11 setup
sudo service lightdm restart

# install external resources
# install ssh key if provided at host
if [ -f /vagrant/resources/.ssh/id_rsa ]; then
  if [ ! -d /home/vagrant/.ssh ]; then
    sudo -u vagrant mkdir /home/vagrant/.ssh
    chmod 700 /home/vagrant/.ssh
  fi
  if [ ! -f /home/vagrant/.ssh/id_rsa ]; then
    sudo -u vagrant cp /vagrant/resources/.ssh/id_rsa* /home/vagrant/.ssh/
    chmod 600 /home/vagrant/.ssh/id_rsa*
  fi
fi

# install .extra
if [ -f /vagrant/resources/.extra ]; then
  sudo -u vagrant cp /vagrant/resources/.extra /home/vagrant/.extra
fi