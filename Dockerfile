FROM python:3.7-slim as cloudmapper

LABEL maintainer="https://github.com/0xdabbad00/"
LABEL Project="https://github.com/duo-labs/cloudmapper"

ENV AWS_DEFAULT_REGION=us-east-1 

RUN apt-get update -y
RUN apt-get install -y build-essential autoconf automake libtool python3-tk jq awscli bash

COPY . /opt/cloudmapper
WORKDIR /opt/cloudmapper
RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["bash", "entrypoint.sh"]
