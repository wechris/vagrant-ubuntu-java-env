#
# VARIABLES
VM_IP = "192.168.20.10"
GIT_USER = "John Doe"
DIR_HOME = "/home/vagrant"
HOST = "linux"

# -*- mode: ruby -*-
# vi: set ft=ruby :
# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "packer-ubuntu-16.10-amd64"
  config.vm.hostname = "eclipse.ide.linux"
  config.vm.box_url = "../packer-templates/ubuntu-16.10-amd64-virtualbox.box" 

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3306, host: 3603

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: VM_IP

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
    # Customize the amount of memory on the VM:
    vb.name = "env_java"
    #vb.gui = true
    vb.linked_clone = true
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "4096", "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vb.customize ["modifyvm", :id, "--vram", "32"]
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL

  # Installations###
  # Comment the line to not to install some tool. ###
  # These tools are not optional. They are used by the others installations scripts.
  config.vm.provision "shell", path: "install/tools.sh"

  # Install ssh.key and extras
  config.vm.provision "shell", path: "install/ssh-extras.sh"
  
  # Install Java
  config.vm.provision "shell", path: "install/java.sh"
  
  # Install Maven
  config.vm.provision "shell", path: "install/maven.sh", :args => [DIR_HOME]
  
  # Install MySql
  #config.vm.provision "shell", path: "install/my-sql.sh"
  
  # Install Tomcat
  config.vm.provision "shell", path: "install/tomcat.sh", :args => [DIR_HOME]
  
  # Install Git
  config.vm.provision "shell", path: "install/git.sh", :args => [GIT_USER, DIR_HOME]
  
  # change to german
  config.vm.provision "shell", path: "install/german.sh"
  
  # Install to gnome
  config.vm.provision "shell", path: "install/gnome.sh"

  # Install MS Visual Studio Code
  config.vm.provision "shell", path: "install/visual_studio-code.sh", :args => [DIR_HOME]

  # Install Eclipse
  config.vm.provision "shell", path: "install/eclipse.sh", :args => [HOST, DIR_HOME]
end
