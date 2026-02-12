FROM eceasy/cli-proxy-api:v6.8.13 AS src
FROM tailscale/tailscale:v1.94.1

WORKDIR /app

COPY --from=src /CLIProxyAPI/CLIProxyAPI ./
COPY --from=src /CLIProxyAPI/config.example.yaml ./config.yaml

COPY run.sh ./

CMD ["./run.sh"]
