FROM node:24-bookworm-slim

ARG PI_VERSION=latest
ARG PI_WEB_VERSION=latest

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        openssh-client \
        ca-certificates \
        python3 \
        make \
        g++ \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g --ignore-scripts @earendil-works/pi-coding-agent@${PI_VERSION}

RUN npm install -g \
    @jmfederico/pi-web@${PI_WEB_VERSION} \
    --allow-scripts=node-pty

WORKDIR /workspace

EXPOSE 8504

CMD ["sh", "-c", "pi-web-sessiond & exec pi-web-server"]