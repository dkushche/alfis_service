FROM debian:stable-slim

ENV ALFIS_VERSION=v0.8.2

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/Revertron/Alfis/releases/download/${ALFIS_VERSION}/alfis-linux-amd64-${ALFIS_VERSION}-nogui \
    -O /usr/bin/alfis && chmod +x /usr/bin/alfis

COPY . .

ENTRYPOINT /entrypoint.sh
