ARG Ubuntu_Version=20.04
FROM ubuntu:${Ubuntu_Version}

LABEL Description="This is the docker image for connectWiFi."

RUN apt-get update && apt-get install -y openjdk-16-jre && apt-get install -y network-manager

WORKDIR /usr/Documents/

COPY ./connectWiFi.jar /usr/Documents/connectWiFi.jar

CMD ["java", "-jar", "/usr/Documents/connectWiFi.jar"]
