#!/bin/sh

# Run Tailscale in background
KUBERNETES_SERVICE_HOST='' /usr/local/bin/containerboot &

# Use custom config file if provided, otherwise use default
DEFAULT_CONFIG_FILE='/app/config.yaml'
CONFIG_FILE="${CONFIG_FILE:-$DEFAULT_CONFIG_FILE}"

# Clone default config if custom config doesn't exist
[ -f "$CONFIG_FILE" ] || cp "$DEFAULT_CONFIG_FILE" "$CONFIG_FILE"

# Run in foreground as PID 1
exec ./CLIProxyAPI --config "$CONFIG_FILE"
