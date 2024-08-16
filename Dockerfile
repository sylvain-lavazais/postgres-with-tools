ARG PG_VERSION=15.7
FROM postgres:${PG_VERSION}
LABEL authors="slavazais"

RUN apt update &&  \
    apt install -y screen btop && \
    apt clean

RUN groupadd -g 1000 app && \
    useradd --system --create-home --home-dir /app -s /bin/bash -g app -u 1000 app

USER 1000

ENTRYPOINT ["tail", "-f", "/dev/null"]
