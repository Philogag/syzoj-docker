FROM node:8-alpine3.11

RUN apk add p7zip clang py3-pygments tzdata git\
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata

RUN git clone -b debug https://github.com/Philogag/syzoj /opt/syzoj 

RUN cd /opt/syzoj \
    && yarn
WORKDIR /
