#!/bin/bash
echo "-------------start------------"
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum -y install docker-ce

sudo service docker start
sudo cp ./docker-install/docker-compose /usr/local/bin/
sudo chmod +x /usr/local/bin/docker-compose
echo "-------------end------------"
