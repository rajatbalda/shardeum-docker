# Shardeum setup scripts

Helpers to setup the following shardeum components

1. Validator
2. Archiver
3. Dashboard

## Usage

Use the installer script to pull, interactively configure, and launch the docker compose project.  
(Must have `git`, `docker`, and `docker-compose` installed):

1. Login to the the Gitlab Container Registry:

```bash
$ docker login registry.gitlab.com
```

2. Download and run the interactive [`installer.sh`](https://gitlab.com/shardeum/shardeum-docker/-/blob/main/installer.sh) script:

```bash
$ curl -O https://gitlab.com/shardeum/shardeum-docker/-/raw/main/installer.sh && chmod +x installer.sh && ./installer.sh
```

## Installing docker and docker-compose

Installing docker and docker-compose using the setup script `./setup/install_docker.sh`

## Validator

```
cd validator
```

### Setup

```
cp .env.example .env #change variables
```

### Start

```
sh docker-up.sh
```

### Stop

```
sh docker-down.sh
```

### Connect to shell

```
sh shell.sh
```

### Upgrade validator

```
sh upgrade.sh
```

## Archiver

TBA

## Dashboard

TBA
