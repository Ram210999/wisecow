FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y netcat-openbsd cowsay fortune-mod && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV SRVPORT=4499

COPY wisecow.sh /usr/local/bin/wisecow.sh

RUN chmod +x /usr/local/bin/wisecow.sh

EXPOSE 4499

CMD ["/usr/local/bin/wisecow.sh"]

