# BUILDER IMAGE
FROM node:8.7.0-stretch

RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    && curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | apt-key add - \
    && apt-key fingerprint 0EBFCD88 \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable" \
    && apt-get update && apt-get install -y \
    docker-ce \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src
COPY package.json yarn.lock lerna.json /src/
RUN yarn