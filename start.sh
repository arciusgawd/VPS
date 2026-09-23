#!/bin/bash

set -e

if [ -z "$ROOT_PASSWORD" ]; then
    echo "ERROR: ROOT_PASSWORD variable is missing"
    exit 1
fi

echo "root:${ROOT_PASSWORD}" | chpasswd

mkdir -p /run/sshd

exec /usr/sbin/sshd -D -e
