FROM node:8-alpine3.11

WORKDIR /

RUN apk add p7zip clang py3-pygments tzdata git\
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata \
    && apk cache clean \
    && git clone -b debug https://github.com/Philogag/syzoj /opt/syzoj \
    && cd /opt/syzoj \
    && yarn \
    && yarn cache clean
