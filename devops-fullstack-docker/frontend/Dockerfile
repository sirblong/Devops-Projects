# Sử dụng Ubuntu làm base image
FROM ubuntu:20.04
# Cập nhật package list và cài đặt các dependencies cần thiết
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*
# Copy HTML file vào thư mục default
COPY index.html /var/www/html/index.html
#Expose port 80
EXPOSE 80
#Start nginx
CMD ["nginx","-g","deamon off;"]
