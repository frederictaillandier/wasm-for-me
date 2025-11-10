FROM --platform=linux/amd64 docker.io/library/rust:1.90.0 AS builder
WORKDIR /app
COPY . /app
RUN rustup target add wasm32-wasip1
RUN cargo build --target wasm32-wasip1 --release

FROM scratch
COPY --from=builder /app/target/wasm32-wasip1/release/g-hello-docker-runtime.wasm /app/g-hello-docker-runtime.wasm

ENTRYPOINT ["/app/g-hello-docker-runtime.wasm"]
