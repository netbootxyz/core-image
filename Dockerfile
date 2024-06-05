FROM docker:26.1.4

RUN \
 mkdir /image
COPY . /image/
RUN \
 apk add bash git wget docker curl make && \
 cd /image && \
 wget https://github.com/linuxkit/linuxkit/releases/download/v1.0.1/linuxkit-linux-amd64 && \
 wget https://github.com/linuxkit/linuxkit/releases/download/v1.0.1/linuxkit-darwin-amd64 && \
 mkdir -p out/core

