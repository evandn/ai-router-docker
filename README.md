# ai-router-docker

A Dockerized AI Router secured behind Tailscale

## Usage

```sh
docker run -d \
  --name ai-router \
  -e TS_AUTHKEY=<auth-key> \               # Tailscale auth key
  -e TS_STATE_DIR=/data/tailscale \        # Persistent state dir
  -e TS_AUTH_ONCE=true \                   # Authenticate only once
  -e TS_ACCEPT_DNS=true \                  # Use Tailscale DNS
  -e TS_EXTRA_ARGS=--advertise-exit-node \ # Extra tailscaled args
  -e MANAGEMENT_PASSWORD=<password> \      # Web UI admin password
  -v /path/to/data:/data \                 # Persistent data volume
  ghcr.io/evandn/ai-router-docker:latest
```
