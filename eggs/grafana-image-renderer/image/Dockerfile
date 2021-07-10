FROM grafana/grafana-image-renderer:latest

LABEL author="LazyBytez" maintainer="contact@lazybytez.de"

RUN adduser -D -h /home/container container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/ash", "/entrypoint.sh"]
