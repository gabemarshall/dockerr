FROM kalilinux/kali-linux-docker
MAINTAINER Gabe Marshall
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    git \
    libffi-dev \
    libssl-dev \
    python2.7 \
    python-pip \
    python-pyicu
RUN git clone https://github.com/ChrisTruncer/EyeWitness.git /opt/eyewitness
RUN pip install bs4
RUN /opt/eyewitness/setup/setup.sh
WORKDIR /opt/eyewitness
RUN mv /bin/phantomjs ./bin/
ENTRYPOINT ["./EyeWitness.py"]
# docker run --rm -it -v /tmp:/tmp eyewitness -x /tmp/testing.xml --headless -d /tmp/web/
