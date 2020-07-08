FROM openjdk:8-jre

RUN   apt update -y \
&&    apt install ssh -y \
&&    apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
&&    echo "root:root" | chpasswd

COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 8080 22
ENTRYPOINT ["docker-entrypoint.sh"]
