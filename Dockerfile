FROM node:16.13.0

RUN apt-get update \
    && apt-get install -y python3-dev python3-pip zip jq \
    && pip3 install awscli --upgrade \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
