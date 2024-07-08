#!/bin/bash
sudo apt update
sudo apt upgrade -y

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Ajouter l'utilisateur au groupe docker
sudo usermod -a -G docker $USER
grep docker /etc/group # Vérifier que l'ajout a fonctionné, observer quelque chose comme : docker:x:998:[user]
newgrp docker # Pour éviter d'avoir à log out/log in

# Executer avec sudo sh docker-install.sh
# Verifier l'installation avec sudo docker version
# Verifier l'installation avec sudo docker compose version
# Tester avec sudo docker run hello-world
