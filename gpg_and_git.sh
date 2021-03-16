gpg --full-generate-key

read -p "Real name: " name
read -p "Email: " email

git config --global commit.gpgsign true
git config --global user.name "$name"
git config --global user.email "$email"
git config --global alias.logs "log --show-signature"

gpg --list-secret-keys --keyid-format LONG

echo "remember to gpg --armor --export SIGNING_KEY" and add to github
echo "remember to git config --global user.signingkey SIGNING_KEY"
echo "checking your settings... please verify"

git config --list

