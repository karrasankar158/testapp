FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/testapp-1.0.jar testapp-1.0.jar
EXPOSE 8080
CMD ["java","-jar","testapp-1.0.jar"]
