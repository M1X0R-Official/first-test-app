FROM node:18-alpine

WORKDIR /app

# نصب dependencies مورد نیاز
RUN apk add --no-cache python3 make g++

# کپی فایل‌های package
COPY package*.json ./

# تنظیم npm registry و نصب پکیج‌ها
RUN npm config set registry https://registry.npmjs.org/ && \
    npm install

COPY . .

EXPOSE 2443

CMD ["npm", "start"]
