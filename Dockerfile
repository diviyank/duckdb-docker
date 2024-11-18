FROM ubuntu:24.04 AS base
ARG DUCKDB_VERSION=v1.1.3

RUN apt-get update  \
    && apt-get install -y curl unzip \
    && curl -L -o duckdb_cli.zip "https://github.com/duckdb/duckdb/releases/download/${DUCKDB_VERSION}/duckdb_cli-linux-amd64.zip" \
    && unzip duckdb_cli.zip \
    && rm duckdb_cli.zip

ENTRYPOINT [ "/duckdb" ]
