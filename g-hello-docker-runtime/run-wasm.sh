#! /bin/bash


# podman image inspect g-hello-docker-runtime


# build with the wasm runtime in docker 
podman run --rm --annotation run.oci.handler=wasm g-hello-docker-runtime