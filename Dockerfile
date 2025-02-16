FROM node:18-alpine

WORKDIR /

COPY package*.json ./
RUN npm install

COPY . .


EXPOSE 2443

CMD ["node", "server.cjs"]
