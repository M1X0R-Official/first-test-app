# استفاده از نسخه پایدار Node.js
FROM node:18-alpine

# تنظیم مسیر کاری
WORKDIR /app

# کپی کردن فایل‌های package.json و package-lock.json
COPY package*.json ./

# پاک کردن کش npm
RUN npm cache clean --force

# نصب وابستگی‌ها
RUN npm install --production --force

# کپی کل پروژه به کانتینر
COPY . .

# مشخص کردن پورت اجرا
EXPOSE 2443

# اجرای دستور پیش‌فرض
CMD ["npm", "start"]
