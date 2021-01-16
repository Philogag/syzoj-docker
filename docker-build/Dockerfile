FROM node:8

# fix tzdata install problem
ENV DEBIAN_FRONTEND noninteractive

# RUN apt-get update -y && apt-get install -y ca-certificates curl gnupg && \
#     echo "deb https://deb.nodesource.com/node_8.x bionic main" >> /etc/apt/sources.list.d/nodesource.list && \
#     echo "deb-src https://deb.nodesource.com/node_8.x bionic main" >> /etc/apt/sources.list.d/nodesource.list && \
#     curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
# RUN apt-get update -y &&\
#     apt-get install -y nodejs &&\
#     whereis node &&\
#     whereis npm

RUN apt-get update -y && apt-get install -y p7zip-full clang-format python-pygments gcc g++ make libboost-filesystem-dev git

RUN git clone https://github.com/Philogag/syzoj /opt/syzoj
RUN git clone https://github.com/syzoj/judge-v3 /opt/judge-v3

WORKDIR /opt/syzoj
RUN npm install && (node_modules/.bin/tsc || true)
WORKDIR /opt/judge-v3
RUN npm install && (node_modules/.bin/tsc || true)
WORKDIR /
