FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -yq wget gcc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /root/

RUN wget https://raw.githubusercontent.com/g4klx/DummyRepeater/master/DV3000/AMBEserver.c
    gcc -o AMBEserver AMBEserver.c && \
    rm AMBEserver.c

ENTRYPOINT /root/AMBEserver

