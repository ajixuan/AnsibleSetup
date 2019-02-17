#!/bin/bash

#Make sure Ansible is installed
if [ which ansible ]; then
    echo "Install ansible"
    exit 1
fi

#Run playbook
ansible-playbook
