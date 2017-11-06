#!/bin/bash

docker create --name=1c_server_data -v /var/log/1c -v /home/usr1cv8/ a4neg/1c-centos7-docker
docker run --name=1c_server --restart=always \
 --net host \
 --detach \
 --volumes-from 1c_server_data  \
 --volume /etc/localtime:/etc/localtime:ro \
 -h termit.srv \
 a4neg/1c-centos7-docker

