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

# misc
echo "export GPG_TTY=$(tty)" >> ~/.bashrc
source ~/.bashrc
sudo apt install python3-virtualenv
sudo apt install openjdk-8-jre
sudo apt install node-express-generator

# you know the drill
sudo apt-get update && sudo apt-get upgrade

# npm
sudo apt-get install npm

# docker
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
sudo reboot
