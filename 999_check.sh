echo "alias python='python3'" >> ~/.bashrc
echo "alias aws-cli='docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'" >> ~/.bashrc
echo "alias lsa='ls -alh'" >> ~/.bashrc
echo "alias lsx='ls -lrth'" >> ~/.bashrc
echo "alias eb=\"echo ''\"" >> ~/.bashrc
echo "alias bashconfig='vim ~/.bashrc'" >> ~/.bashrc

source ~/.bashrc

java -version
aws-cli --version
python3 --version
python --version
terraform -v
express --version
