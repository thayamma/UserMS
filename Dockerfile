FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/Project-Microservice-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 6200
ENV JAVA OPTS=""
RUN sh -c "touch Project-Microservice-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "Project-Microservice-0.0.1-SNAPSHOT.jar" ]