## Build a machine with packer 

Clone the repository:

    $ git clone https://github.com/wechris/packer-templates.git && cd packer-templates

Build a machine image from the template in the repository:

    $ packer build -only=virtualbox-iso ubuntu-16.10-amd64.json

Add the built box to Vagrant:

    $ vagrant box add packer-ubuntu-16.10-amd64 ubuntu-16.10-amd64-virtualbox.box

## Build Vagrant Box

Clone the repository:

    cd ..
    $ git clone https://github.com/wechris/vagrant-ubuntu-java-env.git && cd vagrant-ubuntu-java-env
    
Build the box

    $ vagrant up --provision

#Vagrant Provisioning Development Environment

 The objective of this simple project is allow the creation of a java development environment containing basics features.
 Using [Vagrant Provisioning](https://www.vagrantup.com/docs/provisioning/) over ssh script to make the installations and customizations.

##Will be installed:
 * Java 8
 * Maven 3.3
 * MS Visual Studio Code
 * Tomcat
 * Git
 * Eclipse


The installations are customizable. To prevent any installation just comment the script-call row.
Example:
```bash
# Install MySql
#config.vm.provision "shell", path: ".vagrant-provision/my-sql.sh"
```

##For usage:
* Input the email to be used to generate the key in variable:

```bash
#
# VARIABLES
GIT_USER = <input-your-git-email>
```
```bash
#
# VARIABLES
VM_IP = "xxx.xxx.xxx.xxx"
GIT_USER = "git user"
DIR_HOME = "home directory of user vagrnat"
HOST = "linux"
```

##Virtual machine details
 * Ubuntu64
 * 4GB RAM
 * Provider: [Virtual Box](https://www.virtualbox.org/)

