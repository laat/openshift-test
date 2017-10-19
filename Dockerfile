# BUILDER IMAGE
FROM node:8.7.0-stretch

WORKDIR /src
COPY package.json yarn.lock lerna.json /src/
RUN yarn