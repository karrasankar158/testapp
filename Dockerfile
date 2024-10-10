#The base image for the Docker container uses a Linux distribution and contains libraries and the operating system.
FROM eclipse-temurin:17-jdk-alpine
#Our files are created in the container app folder.
#Set the MAINTAINER information or Author of this Dockerfile.
MAINTAINER <SANKAR>
WORKDIR /app
#Copying the JAR file into the container directory.
COPY target/custovehicleprovider-1.0.jar custovehicleprovider-1.0.jar
#Expose port 8080 to allow incoming HTTP traffic to the container.
EXPOSE 8080
#Copying the test YAML file into the container directory.
COPY src/main/resources/application-test.yml /application.yml
#Specify the command to run when the container starts. Here, we are executing a JAR file, which contains three parts.
CMD ["java","-jar","custovehicleprovider-1.0.jar"]
