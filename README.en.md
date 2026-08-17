<h1 align="center">Futu OpenD / moomoo OpenD Docker Images</h1>

<div align="center">

[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/chasenlabs/futu-opend/main.yml)](https://github.com/chasenlab/futu-opend/actions)
[![linux/amd64](https://img.shields.io/badge/linux%2Famd64-supported-2ea44f?style=flat-square)](https://github.com/chasenlab/futu-opend/actions)
[![linux/arm64](https://img.shields.io/badge/linux%2Farm64-supported-2ea44f?style=flat-square)](https://github.com/chasenlab/futu-opend/actions)
[![GitHub Release Date](https://img.shields.io/github/release-date/chasenlabs/futu-opend)](https://github.com/chasenlab/futu-opend/releases)
[![GitHub Release](https://img.shields.io/github/v/release/chasenlabs/futu-opend?&color=fff)](https://github.com/chasenlab/futu-opend/releases)<br>
![](https://img.shields.io/badge/futu-opend-ff6900.svg?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxOTYuNzIgMTk2LjcyIj48ZGVmcz48c3R5bGU+LmNscy0xe2ZpbGw6I2ZmZjt9LmNscy0ye2ZpbGw6IzMyMzQzOTt9LmNscy0ze2ZpbGw6I2ZmNjkwMDt9PC9zdHlsZT48L2RlZnM+PHRpdGxlPmljb24tbml1bml1LWVuX25ldzwvdGl0bGU+PGcgaWQ9ImxheWVyLTEiIGRhdGEtbmFtZT0ibGF5ZXItMSI+PGNpcmNsZSBjbGFzcz0iY2xzLTEiIGN4PSI5OC4zNiIgY3k9Ijk4LjM2IiByPSI5OC4zNiIvPjxwYXRoIGNsYXNzPSJjbHMtMyIgZD0iTTk4LjM2LDBBOTguMzEsOTguMzEsMCwwLDAsLjYyLDEwOS4zM0gzNi4wOEw1OCw3MS4zNCw0OS4xMSw2Ni4yYTIzLjIxLDIzLjIxLDAsMCwxLTQuNy0zNi42MWwxLjIxLTEuMkE2MC42NSw2MC42NSwwLDAsMSw5MS4zLDExbDIuNDkuMTItMiwuODlBNjAuNjUsNjAuNjUsMCwwLDAsNjcuMTgsMzEuNjFsLS4xNS4yMWE4Ljg1LDguODUsMCwwLDAsMy4wOSwxMi4zNWwyLjcsMS41NiwxMC41Myw2LjA4LDEzLjQxLDcuNzQsNDEuOTEsMjQuMmEyMy4yMywyMy4yMywwLDAsMSw4LjUxLDMxLjczbC0yOC43NCw0OS43OGEyMy4yMywyMy4yMywwLDAsMS0zMS43Myw4LjVsLTEyLjUzLTcuMjNhMjcuNTcsMjcuNTcsMCwwLDAsMTAuNDksMTAuODV2MGw0LjgsMi43OFYxOTYuM2MyLjk0LjI2LDUuOS40Miw4LjkuNDJBOTguMzYsOTguMzYsMCwwLDAsOTguMzYsMFptODYuNDgsMTExYTIzLjIsMjMuMiwwLDAsMS0zNCwxNGwtMy4yNS0xLjg3LDMuMi01LjUzQTI3LjM2LDI3LjM2LDAsMCwwLDE1MS4yNyw5MWw4LjE2LDQuNzFhOC44NSw4Ljg1LDAsMCwwLDEyLjI1LTMuNTJsLjItLjQ0YTYwLjY2LDYwLjY2LDAsMCwwLDQuNTMtMzEuODdsLS4xOS0xLjQ2LjgsMS4xOWE2MC42MSw2MC42MSwwLDAsMSw4LjIxLDQ5LjlaIi8+PGNpcmNsZSBjbGFzcz0iY2xzLTMiIGN4PSI4Mi44NyIgY3k9IjEwMy44NSIgcj0iMTQuMzUiIHRyYW5zZm9ybT0ibWF0cml4KDAuMDEsIC0xLCAxLCAwLjAxLCAtMjIuMDcsIDE4NS4zNCkiLz48L2c+PC9zdmc+Cg==&logoColor=ff6900) ![](https://img.shields.io/badge/moomoo-opend-ff6900.svg?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMDAgMTUzLjcyIj4KICAgIDxkZWZzPgogICAgICAgIDxzdHlsZT4uY2xzLTF7ZmlsbDojMjYyNzJiO30uY2xzLTJ7ZmlsbDojZmY2OTAwO308L3N0eWxlPgogICAgPC9kZWZzPgogICAgPGcgaWQ9ImxheWVyLTEiIGRhdGEtbmFtZT0ibGF5ZXItMSI+CiAgICAgICAgPHBhdGggY2xhc3M9ImNscy0yIiBkPSJNMi42NSwxNTMuNTdIMTQuNzhBMy4xLDMuMSwwLDAsMCwxNy41MSwxNTJsLjgxLTEuNDdhMjguNzYsMjguNzYsMCwwLDEsMjEtMTQuNTlsMi43OC0uNDFhNC40Miw0LjQyLDAsMCwwLDQuMDYtMi42OWw0MS4yLTk2LjlhMS42MiwxLjYyLDAsMCwwLTEuODEtMi4yM2wtMi4xOS40NUM1OS4xMyw0MCw0Mi43NSw1NS4xMiwzMS43Miw3NS44M0wzMS4xOSw3N2wtMzEsNzNBMi42NSwyLjY1LDAsMCwwLDIuNjUsMTUzLjU3WiIvPgogICAgICAgIDxwYXRoIGNsYXNzPSJjbHMtMiIgZD0iTTUwLjU1LDE1My43Mkg4MC4zMmwxLjYtLjg4LDUuMS04LjEyYzI1LjIxLTQwLjEsODQuNTMtMzUuNDIsMTAzLjQ3LDcuNTJhMi40OSwyLjQ5LDAsMCwwLDIuMzEsMS40OGgyMWEyLjY1LDIuNjUsMCwwLDAsMi42NC0yLjkxbC01LjU2LTU3YTEsMSwwLDAsMC0yLS4xN2wtNC44OSwxNy42NWEyLjYsMi42LDAsMCwxLTIuODYsMS44OGwtMzMtNC40NGE2Ljg1LDYuODUsMCwwLDEtNS4xMy00TDE1MS4zLDc4YTIuNywyLjcsMCwwLDEsMi44Ny0zLjc1bDE5LjU4LDIuNjFhMi44NywyLjg3LDAsMCwxLDIuMzEsMS44NmwzLjMzLDlhMSwxLDAsMCwwLDEuODItLjA3bDMuMjgtMTEuODNhMi41OSwyLjU5LDAsMCwwLTIuMTUtMy4yNmwtMzguNTEtNS4xNGMtMjcuNDktMy42OC0zMi40LTQxLjM2LTYuNzctNTJsNy4zMy0zYTEsMSwwLDAsMSwxLjI4LDEuNDZsLTYuMjQsMTAuNTVhMTQsMTQsMCwwLDAsMTAuMiwyMWw0My4xLDUuNzZhMTEuMywxMS4zLDAsMCwwLDExLjU5LTE2LjI4TDIwMywzMi4yOGMtMjIuNDMtNDQuNi04Ni44LTQyLjUzLTEwNi4zMywzLjQybC0xLjIxLDIuODZMNDguMTIsMTUwLjA1QTIuNjQsMi42NCwwLDAsMCw1MC41NSwxNTMuNzJaIi8+CiAgICAgICAgPHBhdGggY2xhc3M9ImNscy0yIiBkPSJNMjEzLjUsNzYuNzNsNC0uNjVhMjIuMzUsMjIuMzUsMCwwLDAsMTIuNzItMzcuM2wtNi45My03YTEuMDcsMS4wNywwLDAsMC0xLjc3LDEuMDlsMy4wNyw5YTEwLjY2LDEwLjY2LDAsMCwxLTUsMTNoMFoiLz4KICAgIDwvZz4KPC9zdmc+&logoColor=ff6900) [![Buy Me A Coffee](https://img.shields.io/badge/buy%20me%20-coffee-%2322BC18.svg)](https://www.buymeacoffee.com/chasengao)

**[中文](README.md) | English**

</div>

---

Run [Futu OpenD](https://openapi.futunn.com/futu-api-doc/en/opend/opend-intro.html) or moomoo OpenD with Docker and check upstream releases for updates through automation.

This project is not affiliated with or officially supported by Futu or moomoo. Use it at your own risk.

## Documentation

> [!IMPORTANT]
> The Futu OpenD v10.10.7008 release includes configuration changes. The `login_account`, `login_pwd`, and `login_pwd_md5` fields in the XML configuration are deprecated. See the [Futu OpenD documentation](https://openapi.futunn.com/futu-api-doc/en/opend/opend-cmd.html) to confirm that your configuration and startup parameters are still supported.

- [Futu OpenAPI English documentation](https://openapi.futunn.com/futu-api-doc/en/)
- [Command Line OpenD](https://openapi.futunn.com/futu-api-doc/en/opend/opend-cmd.html)
- [Operation Command](https://openapi.futunn.com/futu-api-doc/en/opend/opend-operate.html)
- [Chinese documentation](https://openapi.futunn.com/futu-api-doc/)

## Quick Start

### Using `docker run`

The following example uses the Futu image. `login_pwd_md5` is the 32-character hexadecimal MD5 digest of the login password. Never commit real account credentials to the repository.

`docker run` uses a host-directory bind mount to store OpenD's device login state in the current directory. This usually avoids entering the mobile verification code and completing device verification again after a container restart.

```shell
docker run -d \
  --name opend \
  --restart unless-stopped \
  -p 11111:11111 \
  -v ./futu-opend-state:/root/.com.futunn.FutuOpenD/F3CNN \
  ghcr.io/chasenlab/futu-opend:latest \
  /docker-entrypoint.sh \
  -login_account=<account number> \
  -login_by_remember=1 \
  -api_port=11111 \
  -api_ip=0.0.0.0 \
  -telnet_port=22222 \
  -lang=chs
```

For moomoo, replace the image with `ghcr.io/chasenlab/moomoo-opend:latest` and change `-lang=chs` to `-lang=en`.

See the [Command Line OpenD documentation](https://openapi.futunn.com/futu-api-doc/en/opend/opend-cmd.html) for all startup parameters.

### Using Docker Compose

Edit [`docker-compose.yml`](docker-compose.yml), then start the service:

```shell
docker compose up -d
```

The Compose configuration uses a bind mount for the configuration file and a Docker named volume for OpenD state. Docker manages the named volume without creating a state directory in the current directory:

```yaml
services:
  opend:
    image: ghcr.io/chasenlab/futu-opend:latest
    restart: unless-stopped
    ports:
      - "11111:11111"
    volumes:
      - ./example.xml:/opend/FutuOpenD.xml:ro
      - futu-opend-state:/root/.com.futunn.FutuOpenD/F3CNN

volumes:
  futu-opend-state:
```

For moomoo, mount the corresponding `OpenD.xml` and use the moomoo-specific state directory `/root/.com.moomoo.OpenD/F3CNN`.

### Persisting mobile verification state

OpenD may request a mobile verification code on the first login or when device lock is enabled. After verification, OpenD stores the device login state in its state directory. That directory must survive container restarts; otherwise, OpenD may request verification again.

The Futu image in this project uses:

```text
/root/.com.futunn.FutuOpenD/F3CNN
```

When using `docker run`, mount it as a host directory:

```shell
-v ./futu-opend-state:/root/.com.futunn.FutuOpenD/F3CNN
```

When using Docker Compose, use a named volume:

```yaml
volumes:
  - futu-opend-state:/root/.com.futunn.FutuOpenD/F3CNN
```

The moomoo image uses a different state directory:

```text
/root/.com.moomoo.OpenD/F3CNN
```

Use a separate named volume or host directory for moomoo so its state is not mixed with the Futu state directory.

Keep in mind:

- Mounting only `/opend/FutuOpenD.xml` does not preserve verification state.
- Do not commit or publicly share the state directory because it may contain device login information.
- Changes to device lock, account, password, or the login environment may still require verification.
- Removing the named volume, PVC, or host state directory may require verification on the next login.

### Entering a mobile verification code

After OpenD starts, send operation commands through the Telnet operations port. See the official [Operation Command documentation](https://openapi.futunn.com/futu-api-doc/en/opend/opend-operate.html).

```shell
docker exec -it opend bash
telnet 127.0.0.1 22222
input_phone_verify_code -code=<verification code>
```

If `bash` is not available in the container:

```shell
docker exec -it opend sh
```

## Configuration

- Futu: mount [`example.xml`](example.xml) at `/opend/FutuOpenD.xml`.
- moomoo: mount the configuration file at `/opend/OpenD.xml` and follow the image startup requirements.
- To calculate an MD5 password digest with the macOS `md5` command:

  ```shell
  md5 -s '<your password>'
  ```

Use Secrets, environment variables, or your deployment platform's secret manager for account credentials. Do not put real credentials in XML files, Compose files, or shell history.

## Images and architectures

Published images support `linux/amd64` and `linux/arm64`. Futu currently provides only an x86-64 OpenD binary, so the ARM64 image runs OpenD through QEMU user-mode emulation and may be slower than the AMD64 image.

## Building from source

```shell
git clone https://github.com/chasenlab/futu-opend.git
cd futu-opend
```

Build a multi-architecture Futu image:

```shell
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --build-arg BRAND=Futu \
  --build-arg DOMAIN=futunn.com \
  --build-arg BIN_NAME=FutuOpenD \
  -t futu-opend \
  -f Dockerfile .
```

Build a multi-architecture moomoo image:

```shell
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --build-arg BRAND=moomoo \
  --build-arg DOMAIN=futustatic.com \
  -t moomoo-opend \
  -f Dockerfile .
```

For local use, build one platform and load it into Docker:

```shell
docker buildx build --platform linux/arm64 --load \
  --build-arg BRAND=Futu \
  --build-arg DOMAIN=futunn.com \
  --build-arg BIN_NAME=FutuOpenD \
  -t futu-opend:arm64 .
```

## Testing

```shell
pip install -r requirements.txt
python main.py --addr <futu-opend-ip>
```

For users in mainland China, a PyPI mirror can be used:

```shell
pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
```

## Support 
[![get youtself link](https://img.shields.io/badge/get%20youtself%20link-buymeacoffee-orange.svg)](https://www.buymeacoffee.com/invite/chasengao)
