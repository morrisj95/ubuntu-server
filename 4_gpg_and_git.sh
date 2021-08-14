
# github CLI
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# gpg
gpg --full-generate-key
read -p "Real name: " name
read -p "Email: " email

# git config
git config --global commit.gpgsign true
git config --global user.name "$name"
git config --global user.email "$email"
git config --global alias.logs "log --show-signature"

# gpg/git
gpg --list-secret-keys --keyid-format LONG

echo "remember to gpg --armor --export SIGNING_KEY" and add to github
echo "remember to git config --global user.signingkey SIGNING_KEY"
echo "checking your settings... please verify"

git config --list

