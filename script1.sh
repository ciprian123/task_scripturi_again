#!/bin/bash


os=$(grep '^ID_LIKE' /etc/os-release | cut -c 9-14)

if [ "$os" == "debian" ]; then
	echo "Debian"
	sudo apt-get update
	sudo apt-get upgrade -y
	sudo apt-get install git -y
	sudo apt-get install vim -y
else
	echo "CentOS"
	sudo yum check-update
	sudo yum update
	sudo yum install git
	sudo yum install vim
fi

