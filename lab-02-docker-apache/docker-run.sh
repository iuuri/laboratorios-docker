#!/bin/bash

docker pull httpd
docker run -d --name apache-server -p 8081:80 httpd
