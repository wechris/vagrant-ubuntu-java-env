#!/usr/bin/env bash

#Java 8
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y -qq update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get install -y -qq oracle-java8-installer
sudo apt-get install -y -qq oracle-java8-set-default
