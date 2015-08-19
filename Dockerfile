FROM ubuntu:latest

MAINTAINER Colm Harrington <me@vendor.com>

RUN apt-get -y update \
    && apt-get install -y python python-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install robotframework==2.9
RUN pip install robotframework-selenium2library==1.7.3
RUN pip install requests==2.7.0

RUN     mkdir /robot
VOLUME  /robot
WORKDIR /robot
