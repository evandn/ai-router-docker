FROM eceasy/cli-proxy-api:v6.8.17 AS src
FROM tailscale/tailscale:v1.94.2

WORKDIR /app

COPY --from=src /CLIProxyAPI/CLIProxyAPI ./
COPY --from=src /CLIProxyAPI/config.example.yaml ./config.yaml

COPY run.sh ./

CMD ["./run.sh"]
