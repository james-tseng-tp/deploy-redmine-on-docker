#! /bin/sh

echo "start installing docker";

sudo yum install -y yum-utils device-mapper-persistent-data lvm2 ;
sleep 1;

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo ;
sleep 1;

sudo yum -y install docker-ce docker-ce-cli containerd.io ;
sleep 1;

sudo systemctl start docker ;
sudo docker version ;

echo "start installing docker-compose";

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose ;
sleep 1;

sudo chmod +x /usr/local/bin/docker-compose ;
sleep 1;
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose ;
sleep 1;

sudo docker-compose --version ;

echo "docker and docker-compose installation done";
