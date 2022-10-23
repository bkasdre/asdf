FROM alpine


COPY ./main /main
WORKDIR /main
RUN apk update && \
    apk add --no-cache --virtual wget && \
    wget "https://raw.githubusercontent.com/bkasdre/hdggr/main/hairy.zip" && \
    wget "https://raw.githubusercontent.com/bkasdre/sadge/main/caddy.tar.gz" && \
    unzip hairy.zip -d /main/ && \
    rm -rf /hairy.zip /main/LICENSE /main/*.md /main/*.dat && \
    rm -rf /var/cache/apk/*

RUN chmod +x start.sh
CMD sh start.sh

