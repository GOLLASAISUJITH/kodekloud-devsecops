
#!/bin/bash

sudo apt -y update

sudo apt -y upgrade

sudo apt-get -y update

sudo apt-get -y upgrade

# Add Docker's official GPG key:

sudo apt-get install ca-certificates curl

sudo install -m 0755 -d /etc/apt/keyrings

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get -y update


sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

sudo systemctl restart docker

sudo apt-get -y update

# java and jenkins

sudo apt -y install fontconfig openjdk-17-jre

sudo apt install openjdk-11-jdk maven -y

sudo apt-get -y update

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

sudo apt -y install jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo usermod -a -G docker jenkins

sudo apt update

sudo usermod -a -G docker ubuntu

sudo systemctl restart docker


docker volume create --name sonarqube_data
docker volume create --name sonarqube_logs
docker volume create --name sonarqube_extensions

docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest

git clone https://github.com/GOLLASAISUJITH/kodekloud-devsecops.git

cd kodekloud-devsecops/setup/jenkins-plugins

sudo bash installer.sh

sudo reboot

