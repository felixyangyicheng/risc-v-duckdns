# Use Alpine riscv64 image 
FROM riscv64/alpine:latest AS builder

# Download necessary packages
RUN apk add --no-cache curl jq

# Copy scripts
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY duckdns-update.sh /usr/local/bin/duckdns-update.sh

# Permissions execution
RUN chmod +x /usr/local/bin/entrypoint.sh /usr/local/bin/duckdns-update.sh

# Variables / update every 5 minutes
ENV SUBDOMAINS=""
ENV TOKEN=""
ENV INTERVAL=300 

#  Entry point
ENTRYPOINT ["entrypoint.sh"]