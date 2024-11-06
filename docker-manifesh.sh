USR=lukaszgryglicki
docker build -t ${USR}/multiarch-example:manifest-amd64 --build-arg ARCH=amd64/ . && docker push ${USR}/multiarch-example:manifest-amd64
# docker build -t ${USR}/multiarch-example:manifest-arm32v7 --build-arg ARCH=arm32v7/ . && docker push ${USR}/multiarch-example:manifest-arm32v7
# docker build -t ${USR}/multiarch-example:manifest-arm64v8 --build-arg ARCH=arm64v8/ . && docker push ${USR}/multiarch-example:manifest-arm64v8
# docker manifest create ${USR}/multiarch-example:manifest-latest --amend ${USR}/multiarch-example:manifest-amd64 --amend ${USR}/multiarch-example:manifest-arm32v7 --amend ${USR}/multiarch-example:manifest-arm64v8
docker manifest create ${USR}/multiarch-example:manifest-latest --amend ${USR}/multiarch-example:manifest-amd64
docker manifest push ${USR}/multiarch-example:manifest-latest
