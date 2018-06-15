#!/bin/bash
if [ $UID == 0 ]; then
  useradd -s /bin/bash -u $HOST_UID clone -d /tmp/geth
  chown -R clone:clone /tmp/geth
  su - clone -c 'entrypoint.sh "$0" "$@"' -- "$@"
  exit
fi
$@
