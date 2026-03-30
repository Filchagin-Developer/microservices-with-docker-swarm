#!/usr/bin/env bash
set -eux

MANAGER_IP="$1"

sleep 25

while [ ! -f /vagrant/worker_join_token.txt ]; do
  echo "Waiting for worker join token..."
  sleep 5
done

TOKEN=$(cat /vagrant/worker_join_token.txt)

if ! docker info | grep -q "Swarm: active"; then
  docker swarm join --token "${TOKEN}" "${MANAGER_IP}:2377"
fi