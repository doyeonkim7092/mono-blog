FROM node:latest as server

ENV NODE_ENV=local

WORKDIR /usr/src/

COPY *.json ./
COPY /packages/server/ ./packages/server/

RUN yarn

EXPOSE 8000

CMD ["npm", "run", "start:local", "--prefix", "./packages/server"]