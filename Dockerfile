ARG DOCKER_VERSION=19.03.12
FROM docker:$DOCKER_VERSION

ARG BUILDX_VERSION=v0.4.2

RUN wget https://github.com/docker/buildx/releases/download/${BUILDX_VERSION}/buildx-${BUILDX_VERSION}.linux-amd64 \
    && mkdir -p ~/.docker/cli-plugins \
    && mv buildx-${BUILDX_VERSION}.linux-amd64 ~/.docker/cli-plugins/docker-buildx \
    && chmod a+x ~/.docker/cli-plugins/docker-buildx
