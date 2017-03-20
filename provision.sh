#!/bin/sh

# Shell provisioning script for new desktop env.
#
# The objective of this script is to prepare the
# machine to run an Ansible playbook.

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get -y install ansible openssh-server git

# Allow passwordless sudo for all.
#echo "ALL            ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers.d/000_nopasswd_all

# Run the Ansible provisioning playbook.
ansible-playbook site.yml -i ./hosts

