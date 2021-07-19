#!/bin/bash

docker run -d \
  --name=code-server \
  -e PUID=1026 \
  -e PGID=1026 \
  -e PASSWORD=prtpass0 \
  -e TZ=America/Chicago \
  -p 8443:8443 \
  -v /home/paul/Projects/julia-container/config:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/code-server

# Stuff I removed:
#  -e HASHED_PASSWORD= `#optional` \
#  -e SUDO_PASSWORD=password `#optional` \
#  -e SUDO_PASSWORD_HASH= `#optional` \
#  -e PROXY_DOMAIN=code-server.my.domain `#optional` \
