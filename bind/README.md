Based off of https://github.com/sameersbn/docker-bind



Step 1 - Building Docker Image
==============================

```
docker build -t bind .
```


Step 2 - Start Docker container
===============================

Use --env DOMAIN=<custom domain> --env NSIP=<ip address of this server>

```
docker run --name bind -d --restart=always \
  --publish 53:53/tcp --publish 53:53/udp --publish 10000:10000/tcp \
  --volume /srv/docker/bind:/data \
  sameersbn/bind:latest
```
