FROM openjdk:8-jre

RUN  apt update -y \
&&  apt install ssh -y \
#&& service ssh start \
&&  /bin/echo dev:dev |chpasswd

EXPOSE 8080 22
