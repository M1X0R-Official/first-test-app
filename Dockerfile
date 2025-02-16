# استفاده از نسخه رسمی Node.js
FROM node:18-alpine

# تنظیم مسیر کاری داخل کانتینر
WORKDIR /app

# کپی کردن فایل‌های package.json و package-lock.json به داخل کانتینر
COPY package*.json ./

# پاک‌سازی کش NPM و نصب وابستگی‌ها
RUN npm cache clean --force && npm install --production --frozen-lockfile --verbose

# کپی کردن تمامی فایل‌ها به داخل کانتینر
COPY . .

# پورت مورد نظر برای برنامه
EXPOSE 2443

# دستور اجرای پیش‌فرض
CMD ["npm", "start"]
