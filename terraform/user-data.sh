#!/bin/bash
yum update -y
yum install docker -y
systemctl start docker
docker run -d -p 80:80 sanketmedhepawar/flaskapp:latest

