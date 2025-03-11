# Dùng image Node.js làm base
FROM node:18

# Tạo thư mục làm việc
WORKDIR /app

# Copy file package.json và cài dependencies
COPY package*.json ./
RUN npm install

# Copy toàn bộ mã nguồn
COPY . .

# Lệnh chạy test
CMD ["npm", "test"]