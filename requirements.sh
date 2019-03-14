#!/bin/bash
echo '          #####################################'
echo '          Configuration to run odoo with docker'
echo '          #####################################'
printf "\n\n\n"

#Install docker

sudo apt-get update
# 1 er methode pour installer docker
# sudo apt-get install \
#     apt-transport-https \
#     ca-certificates \
#     curl \
#     gnupg2 \
#     software-properties-common

# curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
# sudo add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/debian \
#    $(lsb_release -cs) \
#    stable"
# sudo apt-get update
# sudo apt-get install docker-ce docker-ce-cli containerd.io

# 2 em methode pour installer docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER

# Install docker compose
sudo apt install python-pip
sudo pip install docker-compose

#image odoo and postgress
sudo docker pull odoo:11.0
sudo docker pull postgres:9.6
