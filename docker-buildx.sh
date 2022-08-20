#!/bin/sh
version=$1
platforms="linux/arm64,linux/amd64"

echo "Building $version of acme-dns for platforms: $platforms!"

docker buildx build \
    --platform $platforms \
    --rm \
    --push \
    --compress \
    -t twgraham/acme-dns:$version \
    -f ./Dockerfile.buildx . 
