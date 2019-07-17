#!/bin/bash
version=$1

if [ ${#version} -eq "0" ]; then
	version="latest"
fi

docker build --rm -t jinkyun1210/nginx .
docker run -d --rm --name nginx1 -p 8888:80 jinkyun1210/nginx
curl http://127.0.0.1:8888
# docker-machine ip --> curl http://192.168.100.29:8888

docker stop nginx1

read -p "Push OK? (y/n) " yn
if [ $yn == n ]; then
	echo "Push Cancel.."
else
	docker login
	docker push jinkyun1210/nginx:$version
fi

