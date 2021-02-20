FROM node:8-alpine3.11

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk add p7zip clang py3-pygments tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata

RUN apk add git \
    && git clone -b debug https://github.com/Philogag/syzoj /opt/syzoj \
    && apk del git

RUN cd /opt/syzoj \
    && npm install \
    && (./node_modules/.bin/tsc || true) \
    && npm cache verify
WORKDIR /
