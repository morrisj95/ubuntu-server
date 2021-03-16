# prerequisite: docker-compose
# sets up and install gitlab self-hosted as a docker container via docker-compose


# let's move nextcloud from 80/443 to 81/444..
sudo snap set nextcloud ports.http=81 ports.https=444

# gitlab
export GITLAB_HOME=/srv/gitlab
sudo mkdir -p $GITLAB_HOME/data
sudo mkdir -p $GITLAB_HOME/logs
sudo mkdir -p $GITLAB_HOME/config
sudo chown -R :docker $GITLAB_HOME
sudo chmod -R 775 $GITLAB_HOME

mkdir -p ~/.gitlab
cd ~/.gitlab/

cat >~/.gitlab/docker-compose.yml <<EOL
web:
  image: 'gitlab/gitlab-ee:latest'
  restart: always
  hostname: 'gitlab.localhost'
  environment:
      - "GITLAB_OMNIBUS_CONFIG=external_url 'http://192.168.1.170:8001/'"
  ports:
    - "8003:22"
    - "8001:8000"
    - "8002:443"
  volumes:
    - '$GITLAB_HOME/config:/etc/gitlab'
    - '$GITLAB_HOME/logs:/var/log/gitlab'
    - '$GITLAB_HOME/data:/var/opt/gitlab'
... 
EOL

docker-compose up -d

