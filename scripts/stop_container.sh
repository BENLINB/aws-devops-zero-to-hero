#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps | awk 'NR>1 {print $1}')

if [ -n "$containerid" ]; then
  echo "Stopping and removing container ID(s): $containerid"
  docker rm -f $containerid
else
  echo "No running container found"
fi
