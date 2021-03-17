# terraform
cd ~
mkdir terraform && cd terraform
wget https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.8_linux_amd64.zip
sudo apt-get install unzip
unzip terraform_0.14.7_linux_amd64.zip
sudo mv terraform /usr/local/bin
cd ~
rm -rf terraform/
terraform -install-autocomplete


# you know the drill. Gonna be a while here...
sudo apt-get update && sudo apt-get upgrade


# misc
echo "alias gpg-fix='export GPG_TTY=$(tty)'" >> ~/.bashrc
source ~/.bashrc
sudo apt install python3-virtualenv
sudo apt install openjdk-8-jre
sudo apt install node-express-generator
sudo apt-get install kubernetes


# npm
sudo apt-get install npm

# docker
sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
sudo reboot
