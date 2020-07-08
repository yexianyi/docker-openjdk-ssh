FROM openjdk:8-jre

COPY docker-entrypoint.sh /home/docker-entrypoint.sh

WORKDIR /home

RUN  apt update -y \
&&  apt install ssh -y
#&& service ssh start \
#&&  /bin/echo dev:dev |chpasswd

EXPOSE 8080 22
