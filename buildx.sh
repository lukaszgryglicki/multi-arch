USR=lukaszgryglicki
docker buildx build --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag ${USR}/multiarch-example:buildx-latest .
