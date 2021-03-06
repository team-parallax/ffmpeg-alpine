FROM alfg/ffmpeg:latest

RUN apk --no-cache \
    add --update \
    --repository="http://dl-cdn.alpinelinux.org/alpine/edge/community" \
    bash \
    curl \
    jq \
    npm \
    && ffmpeg -buildconf \
    && npm install -g yarn
