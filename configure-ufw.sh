#!/usr/bin/env bash
set -eu

if [ "${EUID}" -ne 0 ]; then
  echo "This script should be run as root."
  exit 1
fi

echo "Configuring UFW firewall."
ufw allow 27950/udp comment OpenArena
ufw allow 27960/udp comment OpenArena
ufw enable
echo "UFW firewall configured."

