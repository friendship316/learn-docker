FROM java:8
VOLUME /tmp
ADD target/learn-docker-0.0.1-SNAPSHOT.jar learn-docker.jar
