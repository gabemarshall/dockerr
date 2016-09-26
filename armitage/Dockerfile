FROM kalilinux/kali-linux-docker
MAINTAINER Gabe Marshall
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    metasploit-framework armitage curl unzip git gcc make libpcap-dev tmux \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
ADD run.sh ./
CMD ./run.sh 0.0.0.0 $ARM_PASS 
# docker build -t metasploit .
# docker run -d --hostname armitage -e ARM_PASS='s3curepassword!' -v /tmp:/msf -p 443:443 -p 8443:8443 -p 127.0.0.1:9191:9191 -p 55553:55553 metasploit
