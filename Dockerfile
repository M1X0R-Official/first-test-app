FROM node:18-alpine

WORKDIR /app

# Add package files
COPY package*.json ./

# Install dependencies using clean npm install
RUN npm clean-install

# Copy app source
COPY . .

EXPOSE 2443

CMD ["npm", "start"]
