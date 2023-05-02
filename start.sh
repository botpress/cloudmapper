#!/bin/sh
source .env
docker build -t cloudmapper .
docker run -it \
    -e ACCOUNT=$ACCOUNT \
    -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
    -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
    -p 8000:8000 \
    -v $(pwd)/account-data:/opt/cloudmapper/account-data \
    -v $(pwd)/web:/opt/cloudmapper/web \
    cloudmapper
