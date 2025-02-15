FROM node:18-alpine

WORKDIR /usr/src/app

COPY app/package.json ./
COPY app/server.js ./
COPY app/public ./public

RUN npm install

EXPOSE 3001

CMD ["node", "server.js"]
