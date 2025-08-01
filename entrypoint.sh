#!/bin/sh
set -e

# Validation des variables
if [ -z "$SUBDOMAINS" ] || [ -z "$TOKEN" ]; then
  echo "Error: SUBDOMAINS or TOKEN not set !"
  exit 1
fi

# Exécution périodique
while true; do
  /usr/local/bin/duckdns-update.sh
  sleep $INTERVAL
done