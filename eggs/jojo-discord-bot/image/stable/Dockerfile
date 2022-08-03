FROM --platform=$BUILDPLATFORM ghcr.io/lazybytez/jojo-discord-bot:latest

LABEL author="LazyBytez" maintainer="contact@lazybytez.de"

LABEL org.opencontainers.image.source="https://github.com/lazybytez/custom-eggs"
LABEL org.opencontainers.image.licenses=MIT

# Add container user
RUN adduser -D -h /home/container container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./../entrypoint.sh /entrypoint.sh
entrypoint [ "/bin/ash", "/entrypoint.sh" ]
