#!/usr/bin/env bash
set -eux

MANAGER_IP="$1"

sleep 15

if ! docker info | grep -q "Swarm: active"; then
  docker swarm init --advertise-addr "${MANAGER_IP}"
fi

docker swarm join-token -q worker > /vagrant/worker_join_token.txt