# استفاده از نسخه رسمی Node.js
FROM node:18-alpine

# تنظیم مسیر کاری داخل کانتینر
WORKDIR /app

# کپی کردن فایل‌های package.json و package-lock.json به داخل کانتینر
COPY package*.json ./

# نصب وابستگی‌ها (برای تولید)
RUN npm install --production --frozen-lockfile

# کپی کردن تمامی فایل‌ها به داخل کانتینر
COPY . .

# پورت مورد نظر برای برنامه
EXPOSE 2443

# دستور اجرای پیش‌فرض
CMD ["npm", "start"]
