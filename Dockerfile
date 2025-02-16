FROM node:18-alpine

WORKDIR /app
COPY package*.json ./
RUN npm clean-install



COPY . .

EXPOSE 2443

CMD ["npm", "start"]
