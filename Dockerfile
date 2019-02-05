FROM ubuntu:18.04
MAINTAINER Carl Bäckström

RUN apt-get update && apt-get install -y \
    ruby-dev \
    make \
    gcc

RUN gem install listen
RUN gem install compass
RUN gem install compass-core

VOLUME /src

WORKDIR /src

ENTRYPOINT [ "compass" ]
