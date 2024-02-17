# SuperKMA Infrastructure

This repository contain all docker compose files for run and deploy SuperKMA on both developer and production environment.

## Prerequisites

Make sure you have installed all of the following prerequisites on your development machine:
- GNU Make

## Downloading

Clone the repository to your local machine:

```bash
git clone https://github.com/KMA-Score/Infrastructure.git
```

## Environment variables

Copy example variables from .env.example and edit.

```bash
cp -r .env.example .env
```

## Development

```bash
make ready
make up # Start all service
make down # Stop all service
make clean # Delete everything include network and volume
```

## Production
In production mode, containers will not expose any port (except Postgres) and use "nginx-pm" as a proxy (this is network name for our reverse proxy. I will try make it dynamic later)

```bash
make ready
make prod-up # Start all service
make prod-down # Stop all service
make prod-clean # Delete everything include network and volume
```