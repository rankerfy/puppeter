FROM docker.n8n.io/n8nio/n8n:1.84.1
USER root
# Permite pasar el GID correcto del socket de Docker, por defecto 988 (puedes sobreescribirlo en el build)
ARG DOCKER_GID=988
RUN apk add --no-cache docker-cli && \
    # Intenta crear el grupo "docker" con el GID indicado; si ya existe, ignora el error
    addgroup -g ${DOCKER_GID} docker || true && \
    # Agrega el usuario node al grupo docker
    addgroup node docker
USER node
