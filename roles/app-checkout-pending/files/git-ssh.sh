#!/bin/sh

keyfile=`dirname $0`/deploy.key

if [ -f "$keyfile" ]; then
  exec /usr/bin/ssh -o StrictHostKeyChecking=no -i "$keyfile" "$@"
else
  exec /usr/bin/ssh -o StrictHostKeyChecking=no "$@"
fi
