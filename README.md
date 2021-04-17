# Template Python Project

A quick jumping-off point for Python projects. Includes configuration for [pytest](https://docs.pytest.org/en/6.2.x) for testing and [Docker](https://docs.docker.com) for bundling the project into a reproducible container.

## Setup

Install [Docker Compose](https://docs.docker.com/compose/install) and start the Docker daemon.

Rename `env_file.template` to `env_file` and fill in the secrets. **Do NOT commit this file.**

## Usage

###### Install the app inside a container

```bash
make build
```

###### Starting the container in dev mode

```bash
make dev
```

###### Get a shell inside the container

```bash
make shell
```

###### Run tests

Inside the container, run

```bash
pytest
```

###### Stop the container

```bash
make stop
```
