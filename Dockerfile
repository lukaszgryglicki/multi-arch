ARG ARCH=
FROM ${ARCH}debian
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "curl" ]
