Based off of https://github.com/sameersbn/docker-bind



Step 1 - Building Docker Image
==============================

```
./build.sh
```

You'll be prompted to enter the domain that you'll be using (example.com) and the ip ad$
where this is being installed.

Step 2 - Start Docker container
===============================

```
docker run --name bind -d --restart=always \
  --publish 53:53/tcp --publish 53:53/udp --publish 10000:10000/tcp \
  --volume /srv/docker/bind:/data \
  sameersbn/bind:latest
```

Step 3 - Restart bind
=====================

```
docker exec -it bind service bind9 restart
```

Step 4 - Configure Domain DNS settings
======================================


