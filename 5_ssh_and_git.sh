sudo apt-get update && sudo apt-get upgrade

ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub 
echo "remember to add that to github and gitlab"


touch ~/.ssh/config
echo "Host github.com" >> ~/.ssh/config
echo " HostName github.com" >> ~/.ssh/config
echo " IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config
echo "" >> ~/.ssh/config

echo "Host gitlab.com" >> ~/.ssh/config
echo " HostName gitlab.com" >> ~/.ssh/config
echo " IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config
echo "" >> ~/.ssh/config
