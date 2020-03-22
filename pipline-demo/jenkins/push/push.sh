#!/bin/bash

echo "**************************"
echo "****** Pushing image *****"
echo "**************************"

IMAGE="maven-project"

echo "******* Logging in *******"
docker login -u poppy12138 -p $PASS
echo "****** Tagging image *****"
docker tag $IMAGE:$BUILD_TAG poppy12138/$IMAGE:$BUILD_TAG
echo "****** Pushing image *****"
docker push poppy12138/$IMAGE:$BUILD_TAG
