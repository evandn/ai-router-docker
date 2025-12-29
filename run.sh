#!/bin/sh

# Run Tailscale in background
KUBERNETES_SERVICE_HOST='' /usr/local/bin/containerboot &

# Run in foreground as PID 1
exec ./CLIProxyAPI
