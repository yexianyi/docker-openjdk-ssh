FROM openjdk:8-jre

COPY docker-entrypoint.sh /usr/local/bin/

RUN apt update -y \
&&  apt install ssh -y \
&&  apt-get purge -y --auto-remove \
&&  echo "root:root" | chpasswd \
&&  chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 8080 22
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
