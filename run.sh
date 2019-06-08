#!/bin/bash

# Determine os type
os_family="$(grep -m1 NAME /etc/*release | cut -d\"=\" -f2)"

#Make sure Ansible is installed
if ! which ansible ; then
	case $os_family in
	"Arch*")
		sudo pacman -Sy && yes | sudo pacman -S ansible ;;
	*)
	    echo "Please install ansible"
	    exit 1
		;;
	esac
fi

# Determine available disks


#Run playbook
ansible-playbook site.yml
