#!/bin/bash
docker run -ti \
-e "HOST_UID=$UID" \
-v "$(pwd)":/tmp/geth/keystore \
ethereum/client-go --datadir /tmp/geth account new