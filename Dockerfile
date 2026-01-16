FROM eceasy/cli-proxy-api:v6.7.0 AS src
FROM tailscale/tailscale:v1.92.5

WORKDIR /app

COPY --from=src /CLIProxyAPI/CLIProxyAPI ./
COPY --from=src /CLIProxyAPI/config.example.yaml ./config.yaml

COPY run.sh ./

CMD ["./run.sh"]
