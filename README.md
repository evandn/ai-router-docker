# ai-router-docker

A Dockerized AI Router secured behind Tailscale

## Usage

```sh
docker run -d \
  --name ai-router \                        # Container name
  -e TS_AUTHKEY=<your-auth-key> \           # Tailscale authentication key
  -e TS_STATE_DIR=/data/tailscale \         # Directory for Tailscale state persistence
  -e TS_AUTH_ONCE=true \                    # Only authenticate once with Tailscale
  -e TS_ACCEPT_DNS=true \                   # Accept DNS configuration from Tailscale
  -e TS_EXTRA_ARGS=--advertise-exit-node \  # Additional arguments passed to tailscaled
  -e CONFIG_FILE=/data/config.yaml \        # Path to configuration file
  -e MANAGEMENT_PASSWORD=<your-password> \  # Password for web management UI
  -v ./data:/data \                         # Volume for persistent data
  ghcr.io/evandn/ai-router-docker:latest
```
