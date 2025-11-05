# Kadracoon Infra

Docker-based infrastructure for the Kadracoon project.

## Components
- **backend** — FastAPI service (GHCR image)
- **tmdb-sync** — sync and frame-report service (GHCR image)
- **frontend** — Svelte app (WIP)
- **nginx** — reverse proxy and domain routing
- **systemd unit** — automatic service startup on OCI VM

## Deployment
```bash
docker compose pull
docker compose up -d
```
