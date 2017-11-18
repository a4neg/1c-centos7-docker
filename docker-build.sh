#!/bin/bash

docker build --tag a4neg/1c-centos7-docker .
docker tag 1c-centos7-docker a4neg/1c-centos7-docker
docker push a4neg/1c-centos7-docker
docker pull a4neg/1c-centos7-docker
echo 'Starting a4neg/1c-centos7-docker'
files/run.sh
