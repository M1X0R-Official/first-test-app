# استفاده از نسخه پایدار Node.js
FROM node:18-alpine

# تنظیم مسیر کاری
WORKDIR /app

# کپی کردن فایل‌های package.json و package-lock.json
COPY package*.json ./

# نصب وابستگی‌ها
RUN npm install --production

# کپی کل پروژه به کانتینر
COPY . .

# مشخص کردن پورت اجرا
EXPOSE 3000

# اجرای دستور پیش‌فرض
CMD ["npm", "start"]
