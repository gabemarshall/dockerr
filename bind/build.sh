#!/bin/bash

echo "Enter the domain you would like to configure (example.com)"

read domain

echo "Enter the ip address of your server (where both the DNS server and the A records will point to)"

read ip

cp bind_files/hostname.com.hosts bind_files/hostname.bak
mv bind_files/hostname.bak bind_files/$(echo $domain).hosts
sed '' 's/<DOMAIN>/'$(echo $domain)'/g' bind_files/$(echo $domain).hosts
sed '' 's/<DOMAIN>/'$(echo $domain)'/g' bind_files/named.conf.local
sed '' 's/<IPADDRESS>/'$(echo $ip)'/g' bind_files/$(echo $domain).hosts
sed '' 's/<IPADDRESS>/'$(echo $ip)'/g' bind_files/hosts
sed '' 's/<DOMAIN>/'$(echo $domain)'/g' bind_files/hosts

docker build -t bind .
