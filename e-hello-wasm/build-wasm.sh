# to make it work you will need a runtime 
# curl https://wasmtime.dev/install.sh -sSf | bash
# or wasmedge
# curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash
# add the wasm target to cargo 
# rustup target add wasm32-wasip1

#! /bin/bash
cargo build --target wasm32-wasip1 --release
cp target/wasm32-wasip1/release/e-hello-wasm.wasm .
