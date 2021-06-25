#!/bin/bash

TAG="1.0"
docker build -f Dockerfile -t guildenstern70/axess:$TAG .
docker login
docker push guildenstern70/axess:$TAG
ibmcloud login -r eu-de -g dev --apikey 9hsdSuomffhwDP-oFw8TkYeSXfIPMYGbVQQpdypfiDN1
ibmcloud ce project select --name axess
ibmcloud ce application update --name unicredit-dc -i quay.io/guildenstern70/unicredit-dc-jvm:$TAG

ibmcloud ce application update --name axess-app -i docker.io/guildenstern70/axess:1.0