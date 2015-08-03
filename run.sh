#!/bin/bash

# Develop
#echo "Installing development role"
#apt-get install -y git 
#git clone https://github.com/anishitani/ansible-glassfish -b develop --depth 1 --progress --verbose /etc/ansible/roles/glassfish

# Master
ansible-galaxy install atoshio25.java atoshio25.glassfish

ansible-playbook -i "localhost," -c local -vvvv playbook.yml 