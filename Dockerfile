FROM openjdk:17-ea-11-jdk-slim
VOLUME /tmp
COPY apiEncryptionKEy.jks apiEncryptionKEy.jks
COPY target/config-service-1.0.jar ConfigServer.jar
ENTRYPOINT ["java", "-jar", "ConfigServer.jar"]