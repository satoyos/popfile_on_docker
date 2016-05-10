FROM ubuntu:14.04
MAINTAINER "satoyos"

RUN apt-get update -y && \
    apt-get install -y popfile
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata
    
CMD ["ls"]
