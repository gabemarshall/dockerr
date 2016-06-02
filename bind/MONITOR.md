tcpdump -vvv -s 0 -l -n port 53 | tee dns.txt

watch -n1 "{ cat dns.txt | cut -d ' ' -f14 | grep eversec | cut -d '.' -f1; }"
