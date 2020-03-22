#!/bin/bash

echo "********************************"
echo "******** Building jar **********"
echo "********************************"

WORKSPACE="/Users/bochao/projects/udemy/Jenkins, From Zero To Hero-Become a DevOps Jenkins Master/demo/jenkins-data/jenkins_home/workspace/pipeline-docker-maven"

docker run --rm -v "$WORKSPACE/java-app/:/app" -v "/root/.m2/:/root/.m2/" -w "/app" maven:3-alpine "$@"
