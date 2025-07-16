#!/bin/bash

docker pull nginx
docker run -d --name webserver -p 8080:80 nginx
