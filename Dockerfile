FROM debian:bookworm-slim

# 使用构建产物
ARG BINARY=dist/file-transfer-server-linux-amd64

COPY ${BINARY} /file-transfer-server
WORKDIR /
EXPOSE 8080
CMD ["/file-transfer-server"]
