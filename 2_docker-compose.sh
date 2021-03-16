# install docker compose as a docker container

sudo curl -L --fail https://github.com/docker/compose/releases/download/1.28.5/run.sh -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# pull image and check install
docker-compose --version
