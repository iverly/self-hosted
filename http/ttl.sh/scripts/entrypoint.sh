#!/bin/sh
set -e
# Uncomment the next line to enable garbage collection on startup
# /garbage-collect.sh &
registry serve /etc/docker/registry/config.yml
