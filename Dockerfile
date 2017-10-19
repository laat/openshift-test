# BUILDER IMAGE

FROM node:8

WORKDIR /src
COPY package.json yarn.lock lerna.json /src/
RUN yarn