ARG PG_VERSION=15.7
FROM postgres:${PG_VERSION}
LABEL authors="slavazais"

RUN apt update &&  \
    apt install -y screen btop && \
    apt clean
