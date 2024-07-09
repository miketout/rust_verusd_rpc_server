FROM rust:1.67 as builder
WORKDIR /usr/src/app
COPY . .

RUN cargo build --release

FROM debian:bullseye-slim
RUN apt-get update && apt-get install -y && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/src/app/target/release/rust_verusd_rpc_server .
COPY --from=builder /usr/src/app/Conf.toml .

CMD ["./rust_verusd_rpc_server"]