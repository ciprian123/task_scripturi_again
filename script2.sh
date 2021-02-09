#!/bin/bash

# caut daca avem un grup numit devops
devops_grup=$(less /etc/group | grep "devops"| cut -c 1-6)

# caut daca avem un user numit engineer
engineer_user=$(awk -F: '{ print $1 }' /etc/passwd | grep "engineer")


# in cazul in care nu am un grup numit devops il creez
if [ "$devops_grup" == "devops" ]; then
	echo "DevOps group exists!"
else
	sudo groupadd devops
fi


# in cazul in care nu am un utilizator engineer il creez
if [ "$engineer_user" == "engineer" ]; then
	echo "User engineer already exists!"
else
	sudo useradd engineer
fi

