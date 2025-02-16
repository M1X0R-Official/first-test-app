# استفاده از نسخه پایدار Node.js
FROM node:18-alpine

# تنظیم مسیر کاری
WORKDIR /app

# کپی فایل‌های package.json و package-lock.json
COPY package*.json ./

# نصب وابستگی‌ها (بدون `npm cache clean`)
RUN npm install --production --force || \
  (echo "Retrying npm install without force flag" && npm install --production)

# کپی کل پروژه به کانتینر
COPY . .

# مشخص کردن پورت اجرا
EXPOSE 2443

# اجرای دستور پیش‌فرض
CMD ["npm", "start"]
