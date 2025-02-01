FROM openjdk:17

RUN "mvn clean package"

COPY /target/DockerSpringBootProject.jar  /usr/app

WORKDIR /usr/app

EXPOSE 9090

ENTRYPOINT ["java", "-jar","DockerSpringBootProject.jar"]