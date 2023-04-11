# Sử dụng image đóng gói chính thức của OpenJDK 17
FROM openjdk:17-alpine

# Thư mục làm việc trong container
WORKDIR /app

# Sao chép tệp JAR của ứng dụng vào thư mục làm việc
COPY target/my-spring-boot-app.jar .

# Cổng mạng mà ứng dụng sẽ lắng nghe
EXPOSE 8010

# Lệnh chạy ứng dụng Spring Boot trong container
CMD ["java", "-jar", "my-spring-boot-app.jar"]
