# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  #config.vbguest.auto_update = false
  #config.vm.synced_folder "./", "/vagrant"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.provision "docker" do |d|
    d.pull_images "sequenceiq/hadoop-docker:2.7.0"
    d.pull_images "maven:3"
  end
  
  config.vm.provision "shell", inline: <<-SHELL
  #  sudo apt-get update && \
  #    sudo apt-get -y upgrade && \
  #    sudo apt-get -y install git
    /vagrant/build.sh
    /vagrant/run.sh ch02
  SHELL
end
