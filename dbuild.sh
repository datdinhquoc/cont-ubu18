#!/bin/bash
set +ex;

docker build -t cont-ubu18:latest .;

echo -e "\nImage List:";
docker image prune -f;
docker image ls -a;
#EOF