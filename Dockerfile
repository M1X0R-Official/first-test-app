# استفاده از تصویر Node.js بهینه‌شده
FROM node:18-alpine

# تنظیم مسیر کاری در کانتینر
WORKDIR /app

# کپی کردن فایل‌های package.json و package-lock.json
COPY package*.json ./

# نصب وابستگی‌ها
RUN npm install

# کپی کل پروژه به کانتینر
COPY . .

# مشخص کردن پورت برای اجرا
EXPOSE 3000

# اجرای سرور
CMD ["node", "server.js"]
