#!/bin/bash

echo "Enter pod name"
read pod

dockerid=$(docker ps -a |grep "app_$pod"|awk '{ print $1}')

echo "Docker id: $dockerid"

echo "Connected as root to $pod"
echo
/root/docker-enter.sh $dockerid
