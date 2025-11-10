FROM docker.io/library/rust:1.90.0 AS builder

WORKDIR /app
COPY . /app

RUN cargo build --release

FROM debian:bookworm-slim

WORKDIR /app
COPY --from=builder /app/target/release/b-hello-docker /app

CMD ["./b-hello-docker"]