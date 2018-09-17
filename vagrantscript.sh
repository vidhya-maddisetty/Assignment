#!/bin/bash

WORKDIR=/home/ansible/virtualbox

mkdir ${WORKDIR}

cd ${WORKDIR} && vagrant init

echo "" > Vagrantfile
cat >  Vagrantfile << EOL
Vagrant.configure(2) do |config|
config.vm.box = "hashicorp/precise32"
config.vm.network "public_network" , ip: "192.168.1.169"
end
EOL

vagrant global-status
vagrant up
vagrant ssh
