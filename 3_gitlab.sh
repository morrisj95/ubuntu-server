# prerequisite: docker-compose

# sets up and install gitlab self-hosted as a docker container via docker-compose

# gitlab
export GITLAB_HOME=/srv/gitlab
sudo mkdir -p $GITLAB_HOME/data
sudo mkdir -p $GITLAB_HOME/logs
sudo mkdir -p $GITLAB_HOME/config

mkdir -p ~/.gitlab
cd ~/.gitlab/

cat >~/.gitlab/docker-compose.yml <<EOL
web:
  image: 'gitlab/gitlab-ee:latest'
  restart: always
  hostname: 'gitlab.localhost'
  environment:
    GITLAB_OMNIBUS_CONFIG: |
      external_url 'https://gitlab.example.com'
      # Add any other gitlab.rb configuration here, each on its own line
  ports:
    - '80:80'
    - '443:443'
    - '22:22'
  volumes:
    - '$GITLAB_HOME/config:/etc/gitlab'
    - '$GITLAB_HOME/logs:/var/log/gitlab'
    - '$GITLAB_HOME/data:/var/opt/gitlab'
... 
EOL

docker-compose up -d

