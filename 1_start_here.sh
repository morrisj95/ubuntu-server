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

# nodeJS 14 LTS
sudo apt-get purge --auto-remove nodejs # remove Node10 LTS pre-installed
sudo snap install node --classic # node 14.16.0 as of 3/18/21

# misc
echo "alias gpg-fix='export GPG_TTY=$(tty)'" >> ~/.bashrc
source ~/.bashrc
sudo apt install python3-virtualenv
sudo apt install openjdk-8-jre
sudo npm install -g firebase-tools
sudo apt 

# kubernetes
sudo apt-get install kubernetes
mkdir -p ~/tmp/kube
cd ~/tmp/kube
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

# npm
sudo apt-get install npm

# Google Cloud SDK
mkdir -p ~/tmp/gcsdk
cd ~/tmp/gcsdk
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-332.0.0-linux-x86_64.tar.gz
tar -xvzf google-cloud-sdk-332.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh
./google-cloud-sdk/bin/gcloud init
source ~/.bashrc
cd ~
rm -rf ~/tmp/gcsdk
gcloud --version


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
