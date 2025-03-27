FROM docker.n8n.io/n8nio/n8n:1.84.1
USER root
RUN apk add --no-cache docker-cli && \
    if grep -q ':999:' /etc/group; then \
      GROUP_NAME=$(grep ':999:' /etc/group | cut -d: -f1); \
    else \
      addgroup -g 999 docker && GROUP_NAME=docker; \
    fi && \
    addgroup node $GROUP_NAME
USER node
