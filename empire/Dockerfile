FROM kalilinux/kali-linux-docker
MAINTAINER Gabe Marshall
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -yqq
RUN apt-get install -yqq git wget curl
RUN git clone https://github.com/PowerShellEmpire/Empire.git
