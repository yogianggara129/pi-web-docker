# Pi Web Docker

Dockerized Pi Web application.

Includes Pi Coding Agent and Pi Web.


## Prerequisites
- Docker Engine (>=24)
- Docker Compose

## Quick start

```bash
git clone https://github.com/yogianggara129/pi-web-docker
cd pi-web-docker
docker compose up -d --build
```

The service will be reachable at `http://<your-server-ip>:8504`.

## References
- [Pi Containerization](https://pi.dev/docs/latest/containerization)
- [Pi-web Install](https://pi-web.dev/install)
- [Pi GitHub](https://github.com/earendil-works/pi)
- [Pi-web GitHub](https://github.com/jmfederico/pi-web)


## Configuration (docker‑compose.yml)

| Variable | Value | Description |
|----------|-------|-------------|
| `TZ` | `Asia/Jakarta` | Timezone |
| `PI_WEB_PORT` | `8504` | Port the web server listens on inside the container |
| `PI_WEB_HOST` | `0.0.0.0` | Bind to all interfaces (accessible from outside) |

## Persistent data
- `./data` → `/root/.pi` (application data)
- `./workspaces` → `/workspace` (working directory)

## Stopping

```bash
docker compose down
```

## VPS notes
- Open port **8504** in the firewall/security group.
- Data persists on the host via the mounted `./data` directory.
