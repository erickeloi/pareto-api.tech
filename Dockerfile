FROM node:21-alpine3.17

WORKDIR /usr/src/app

COPY DummyJSON/package.json .

RUN npm install

COPY DummyJSON .

CMD [ "node", "index.js" ]