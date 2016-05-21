FROM kalilinux/kali-linux-docker
MAINTAINER Gabe Marshall
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -yqq --force-yes install metasploit-framework unzip git gcc make libpcap-dev tmux
RUN wget https://github.com/gabemarshall/Brosec/releases/download/1.0/bros-1.0-linux-x86_64.tar.gz
RUN wget https://github.com/robertdavidgraham/masscan/archive/master.zip
RUN unzip master.zip -d ./opt && cd /opt/masscan-master && make
RUN tar xvf bros-1.0-linux-x86_64.tar.gz && mv bros-1.0-linux-x86_64 /usr/local/bin/bros
RUN chmod +x /usr/local/bin/bros
RUN msfdb init
ADD run.sh ./
CMD ./run.sh
# docker build -t metasploit .
# docker run -it --rm --hostname kali -p 443:443 -p 8443:8443 -p 127.0.0.1:9191:9191 metasploit
