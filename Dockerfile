FROM docker.n8n.io/n8nio/n8n:1.84.1
USER root
# Instala el cliente Docker
RUN apk add --no-cache docker-cli
# Agrega al usuario "node" al grupo "docker" (aquí asumimos que el grupo docker tiene GID 999, pero deberás ajustarlo según tu entorno)
RUN addgroup -g 999 docker && adduser node docker
USER node
