#!/bin/sh
# Update IPv4 et IPv6 with API 
IPV4=$(curl -s4 "https://api.ipify.org")
IPV6=$(curl -s6 "https://api64.ipify.org")

# Send IP to DuckDNS
RESULT=$(curl -s "https://www.duckdns.org/update?domains=$SUBDOMAINS&token=$TOKEN&ip=$IPV4&ipv6=$IPV6")

# Logging (option: mount volume for /logs)
echo "$(date) - IPv4: $IPV4 | IPv6: $IPV6 | API Response: $RESULT" >> /logs/duckdns.log