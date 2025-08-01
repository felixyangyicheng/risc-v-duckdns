
## Structure:

+ ├── Dockerfile
+ ├── entrypoint.sh
+ └── duckdns-update.sh

## How to Use:

`docker build -t duckdns-riscv64:latest . `

``docker run -d \
  --name duckdns \
  --network=host \  
  -e SUBDOMAINS="yourdomaine" \
  -e TOKEN="yourtoken" \
  -v <pathto>/logs:/logs duckdns-riscv64:latest ``
