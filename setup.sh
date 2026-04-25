#!/usr/bin/env bash

set -euo pipefail

apt-get -o Acquire::Check-Date=false update
apt-get install -y --no-install-recommends fish starship libatomic1
rm -rf /var/lib/apt/lists/*

mkdir -p /home/agent/.config/fish

cp /tmp/.config/fish/config.fish /home/agent/.config/fish/config.fish
cp /tmp/.config/starship/starship.toml /home/agent/.config/starship.toml

FISH_PATH="$(command -v fish)"
chsh -s "$FISH_PATH" agent

chown -R agent:agent /home/agent/.config
