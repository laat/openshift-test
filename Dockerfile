# BUILDER IMAGE
FROM node:8.7.0-stretch

RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src
COPY package.json yarn.lock lerna.json /src/
RUN yarn