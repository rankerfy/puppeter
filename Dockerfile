FROM docker.n8n.io/n8nio/n8n:1.84.1
USER root
RUN apk add --no-cache docker-cli
USER node
