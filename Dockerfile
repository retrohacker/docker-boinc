FROM buildpack-deps:jessie
MAINTAINER william.jblankenship@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -y --force-yes --no-install-recommends --no-install-suggests \
      boinc-client \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /data
EXPOSE 31416

ADD startup.sh /usr/bin/startup

ENTRYPOINT ["startup"]
