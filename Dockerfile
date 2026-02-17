FROM eclipse-temurin:17-jdk
RUN apt-get update && apt-get install -y curl
VOLUME /tmp
EXPOSE 8080
ADD target/spring-boot-deploy-service.jar spring-boot-deploy-service.jar
ENTRYPOINT ["java","-jar","spring-boot-deploy-service.jar"]
