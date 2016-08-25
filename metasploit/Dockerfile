FROM kalilinux/kali-linux-docker
MAINTAINER Gabe Marshall
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -yqq --force-yes install metasploit-framework unzip git gcc make libpcap-dev tmux
RUN wget https://github.com/robertdavidgraham/masscan/archive/master.zip
RUN unzip master.zip -d ./opt && cd /opt/masscan-master && make && mv /opt/masscan-master /opt/masscan
RUN msfdb init
ADD run.sh ./
CMD ./run.sh
# docker build -t metasploit .
# docker run -it --rm --hostname kali -v /msf:/msf -p 443:443 -p 8443:8443 -p 127.0.0.1:9191:9191 metasploit
