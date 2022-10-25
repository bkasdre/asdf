FROM alpine


COPY ./main /main
WORKDIR /main
RUN apk update && \
    apk add --no-cache --virtual wget && \
    wget "https://github.com/bkasdre/hdggr/raw/main/beed.zip" && \
    wget "https://raw.githubusercontent.com/bkasdre/sadge/main/caddy.tar.gz" && \
    unzip hairy.zip -d /main/ && \
    rm -rf /hairy.zip /main/LICENSE /main/*.md /main/*.dat && \
    rm -rf /var/cache/apk/*

RUN chmod +x start.sh
CMD sh start.sh

