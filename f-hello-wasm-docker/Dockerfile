FROM rust:1.90.0 AS builder
WORKDIR /app
COPY . /app
RUN rustup target add wasm32-wasip1
RUN cargo build --target wasm32-wasip1 --release
RUN apt-get update && \
    apt-get install -y curl xz-utils && \
    curl https://wasmtime.dev/install.sh -sSf | bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

FROM debian:bullseye

COPY --from=builder /root/.wasmtime /root/.wasmtime
COPY --from=builder /app/target/wasm32-wasip1/release/f-hello-wasm-docker.wasm /app/f-hello-wasm-docker.wasm

ENTRYPOINT ["/root/.wasmtime/bin/wasmtime", "/app/f-hello-wasm-docker.wasm"]
