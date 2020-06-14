#!/bin/bash
set +ex;

docker build -t cont-ubu18:latest .;

echo "`nPruning dangling images...";
docker image prune -f;

echo "`nImage List:";
docker image ls -a;
#EOF