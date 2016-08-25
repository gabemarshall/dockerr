FROM python:2
RUN apt-get install wget
RUN git clone https://github.com/infosec-au/altdns
RUN mkdir -p /root/Desktop/
RUN mv /altdns /root/Desktop/altdns-master
WORKDIR /root/Desktop/altdns-master
RUN pip install -r requirements.txt
WORKDIR /
RUN git clone https://LaNMaSteR53@bitbucket.org/LaNMaSteR53/recon-ng.git
WORKDIR /recon-ng
RUN pip install -r REQUIREMENTS
WORKDIR /
RUN git clone https://github.com/jhaddix/domain.git
WORKDIR /domain
RUN wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/sorted_knock_dnsrecon_fierce_recon-ng.txt -O dns.txt
RUN ln -s /recon-ng /usr/share/recon-ng
# docker run -it --rm recon-ng python enumall.py
