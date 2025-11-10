FROM docker.io/library/rust:1.90.0 AS builder

RUN rustup target add x86_64-unknown-linux-musl

WORKDIR /app
COPY . /app
RUN cargo build --release --target x86_64-unknown-linux-musl

FROM scratch

WORKDIR /
COPY --from=builder /app/target/x86_64-unknown-linux-musl/release/d-hello-scratch .

ENTRYPOINT ["/d-hello-scratch"]
