#!/bin/bash
sudo apt update -y 
sudo apt install curl -y
sudo apt install git -y
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo apt-get update
sudo apt-get install docker-compose-plugin
sudo git clone https://github.com/DiegoLeal/API-Terraform.git -y 
docker-compose up --buil
curl --request POST \
    --url http://localhost:8080/api/usuarios \
    --header 'Content-Type: application/json' \
    --data '{
        "id": null,
        "name": "Nome",
        "course": "Engenharia de Software",
        "period": "7º Periodo"
}'

