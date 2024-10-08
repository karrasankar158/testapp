FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/testapp-1.0.jar testapp-1.0.jar
EXPOSE 8080
COPY src/main/resources/application-test.yml /application.yml
CMD ["java","-jar","testapp-1.0.jar"]
