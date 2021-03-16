# ubuntu-server

Scripts to assist with setup of a fresh ubuntu-server install


## Must use ubuntu-server installer to add prerequisites:
1. git

## Notes
DO NOT install docker via snap. This script assumes you installed nothing yet.  If you messed that up, you can do this
```
snap remove docker
rm -R /var/lib/docker
sudo apt-get remove docker docker-engine docker.io
```
