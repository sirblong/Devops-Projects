# Sử dụng Ubuntu làm base image
FROM ubuntu:20.04
#Cài đặt biến môi trường 
ENV NODE_VERSION 20.x
#Cài đặt dependencies
RUN apt-get update && apt-get install -y nodejs && apt-get install -y npm
#Thiết lập thư mục làm việc
WORKDIR /usr/src/app
#Copy và install
COPY package*.json ./
RUN npm install
#Sao chép toàn bộ vào container
COPY . .
#Mở cổng 3000 cho backend để lắng nghe
EXPOSE 3000
#Khởi động ứng dụng
CMD ["npm", "start"]
