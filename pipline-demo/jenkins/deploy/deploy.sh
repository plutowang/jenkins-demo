#!/bin/bash

echo maven-project >/tmp/.auth
echo $BUILD_TAG >>/tmp/.auth
# echo $PASS >>/tmp/.auth

scp -i /opt/aws-prod /tmp/.auth prod-user@ec2-18-223-187-132.us-east-2.compute.amazonaws.com:/tmp/.auth
scp -i /opt/aws-prod ./jenkins/deploy/publish.sh prod-user@ec2-18-223-187-132.us-east-2.compute.amazonaws.com:/tmp/publish
ssh -i /opt/aws-prod prod-user@ec2-18-223-187-132.us-east-2.compute.amazonaws.com '/tmp/publish'

# clean
ssh -i /opt/aws-prod prod-user@ec2-18-223-187-132.us-east-2.compute.amazonaws.com 'rm /tmp/.auth /tmp/publish'
