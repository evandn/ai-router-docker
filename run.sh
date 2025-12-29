#!/bin/sh

# Run Tailscale in background
TS_STATE_DIR='/data/tailscale' KUBERNETES_SERVICE_HOST='' /usr/local/bin/containerboot &

# Run in foreground (becomes PID 1)
exec ./CLIProxyAPI --config /data/config.yaml
