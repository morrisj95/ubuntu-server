cd ~
mkdir -p tmp/dynamodb
cd tmp/dynamodb
wget https://s3.eu-central-1.amazonaws.com/dynamodb-local-frankfurt/dynamodb_local_latest.tar.gz
tar -xvzf dynamodb_local_latest.tar.gz 

mkdir ~/.dynamodb
mv DynamoDBLocal_lib ~/.dynamodb/
mv DynamoDBLocal.jar ~/.dynamodb
mv LICENSE.txt ~/.dynamodb
mv README.txt ~/.dynamodb
mv third_party_licenses ~/.dynamodb

cd ~
rm -rf tmp/dynamodb

echo "alias ddb='cd ~/.dynamodb/ && java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb'" >> ~/.bashrc

source ~/.bashrc
