#!/bin/sh
while true; do
  sleep 1m
  if [ ! -d "/var/lib/registry/docker" ]; then
    echo "No registry data found, skipping garbage collection"
  else
    echo "Starting garbage collection..."
    registry garbage-collect /etc/docker/registry/config.yml || true
  fi
done
