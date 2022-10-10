#!/bin/bash

cd /home/ubuntu

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 624852564786.dkr.ecr.ap-south-1.amazonaws.com
docker pull 624852564786.dkr.ecr.ap-south-1.amazonaws.com/docker-delete:latest
docker stop docker
docker rm docker
docker run -d --name docker -p 80:80 624852564786.dkr.ecr.ap-south-1.amazonaws.com/docker-delete
