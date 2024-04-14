FROM node:latest as client

WORKDIR /usr/src

COPY *.json ./
COPY ./packages/client ./packages/client/

RUN yarn

EXPOSE 3000

CMD ["npm", "run", "start", "--prefix", "./packages/client"]