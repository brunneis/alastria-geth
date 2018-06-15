#!/bin/bash
docker run -ti \
-e "HOST_UID=$UID" \
-v "$(pwd)":/tmp/geth/keystore \
brunneis/alastria-geth account new
