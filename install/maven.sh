#!/usr/bin/env bash
echo Install maven...
DIR_HOME=$1
DOWNLOADS=${DIR_HOME}/Downloads

#Maven
sudo apt-get purge -y maven
MAVEN_DOWNLOAD=${DOWNLOADS}/maven
mkdir -p ${MAVEN_DOWNLOAD}
wget http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz -P ${MAVEN_DOWNLOAD}
tar -zxf ${MAVEN_DOWNLOAD}/apache-maven-3.3.9-bin.tar.gz -C ${MAVEN_DOWNLOAD}
sudo cp -R ${MAVEN_DOWNLOAD}/apache-maven-3.3.9 /usr/local
sudo ln -s /usr/local/apache-maven-3.3.9/bin/mvn /usr/bin/mvn
echo "export M2_HOME=/usr/local/apache-maven-3.3.9" >> ~/.profile
source ~/.profile
