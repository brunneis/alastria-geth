#!/bin/bash
docker run -ti \
-e "HOST_UID=$UID" \
-v "$(pwd)"/keystore:/tmp/geth/keystore \
brunneis/alastria-geth account new
