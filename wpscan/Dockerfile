FROM gabemarshall/kali:latest
MAINTAINER Gabe Marshall <gabemarshall@me.com>

WORKDIR /root
RUN apt-get install -y libcurl4-openssl-dev make zlib1g-dev
RUN git clone https://github.com/wpscanteam/wpscan.git
WORKDIR /root/wpscan
RUN bundle install --without test
