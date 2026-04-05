# Pack Calculator

Full-stack application composed of a React frontend and a Go backend, orchestrated with Docker Compose.

| Service | Repo | Port |
|---|---|---|
| Frontend | [niksis02/pack-calculator-fe](https://github.com/niksis02/pack-calculator-fe) | `80` |
| Backend | [niksis02/pack-calculator-be](https://github.com/niksis02/pack-calculator-be) | `3000` |

## Prerequisites

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/) with the Compose plugin

## Quick start

```bash
make
```

This clones (or updates) both repos and starts all services in the background.

## Make targets

| Target | Description |
|---|---|
| `make` / `make all` | Clone/pull repos, build images, start containers |
| `make setup` | Clone/pull source repos only |
| `make build` | Build Docker images without starting |
| `make up` | Start containers (rebuilds images if needed) |
| `make down` | Stop and remove containers |
| `make restart` | `down` + `up` |
| `make logs` | Tail logs from all services |

## How it works

`setup.sh` is called by `make setup`. For each service it either:
- **clones** the repository if the directory is not yet present, or
- **pulls** the latest changes (`--ff-only`) if the directory already exists.

Docker Compose then builds both images from the local source directories and wires the services together.

## Live

The application is deployed and accessible at **https://d278wsrjbdo0nx.cloudfront.net/**

## URLs (local)

| | URL |
|---|---|
| Frontend | <http://localhost> |
| Backend API | <http://localhost:3000/api/v1> |
