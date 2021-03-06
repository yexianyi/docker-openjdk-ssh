FROM openjdk:8-jre

COPY docker-entrypoint.sh /usr/local/bin/

RUN apt update -y \
&&  apt install ssh -y \
&&  apt-get purge -y --auto-remove \
&&  useradd dev \
&&  /bin/echo dev:dev1234 |chpasswd \
# &&  echo "root:root" | chpasswd \
&&  chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 22
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
