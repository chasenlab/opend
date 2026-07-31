<h1 align="center">Futu OpenD / moomoo OpenD Docker 镜像</h1>

<div align="center">

[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/chasenlabs/futu-opend/main.yml)](https://github.com/chasenlab/futu-opend/actions)
[![linux/amd64](https://img.shields.io/badge/linux%2Famd64-supported-2ea44f?style=flat-square)](https://github.com/chasenlab/futu-opend/actions)
[![linux/arm64](https://img.shields.io/badge/linux%2Farm64-supported-2ea44f?style=flat-square)](https://github.com/chasenlab/futu-opend/actions)
[![GitHub Release Date](https://img.shields.io/github/release-date/chasenlabs/futu-opend)](https://github.com/chasenlab/futu-opend/releases)
[![GitHub Release](https://img.shields.io/github/v/release/chasenlabs/futu-opend?&color=fff)](https://github.com/chasenlab/futu-opend/releases)<br>
![](https://img.shields.io/badge/futu-opend-ff6900.svg?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxOTYuNzIgMTk2LjcyIj48ZGVmcz48c3R5bGU+LmNscy0xe2ZpbGw6I2ZmZjt9LmNscy0ye2ZpbGw6IzMyMzQzOTt9LmNscy0ze2ZpbGw6I2ZmNjkwMDt9PC9zdHlsZT48L2RlZnM+PHRpdGxlPmljb24tbml1bml1LWVuX25ldzwvdGl0bGU+PGcgaWQ9ImxheWVyLTEiIGRhdGEtbmFtZT0ibGF5ZXItMSI+PGNpcmNsZSBjbGFzcz0iY2xzLTEiIGN4PSI5OC4zNiIgY3k9Ijk4LjM2IiByPSI5OC4zNiIvPjxwYXRoIGNsYXNzPSJjbHMtMyIgZD0iTTk4LjM2LDBBOTguMzEsOTguMzEsMCwwLDAsLjYyLDEwOS4zM0gzNi4wOEw1OCw3MS4zNCw0OS4xMSw2Ni4yYTIzLjIxLDIzLjIxLDAsMCwxLTQuNy0zNi42MWwxLjIxLTEuMkE2MC42NSw2MC42NSwwLDAsMSw5MS4zLDExbDIuNDkuMTItMiwuODlBNjAuNjUsNjAuNjUsMCwwLDAsNjcuMTgsMzEuNjFsLS4xNS4yMWE4Ljg1LDguODUsMCwwLDAsMy4wOSwxMi4zNWwyLjcsMS41NiwxMC41Myw2LjA4LDEzLjQxLDcuNzQsNDEuOTEsMjQuMmEyMy4yMywyMy4yMywwLDAsMSw4LjUxLDMxLjczbC0yOC43NCw0OS43OGEyMy4yMywyMy4yMywwLDAsMS0zMS43Myw4LjVsLTEyLjUzLTcuMjNhMjcuNTcsMjcuNTcsMCwwLDAsMTAuNDksMTAuODV2MGw0LjgsMi43OFYxOTYuM2MyLjk0LjI2LDUuOS40Miw4LjkuNDJBOTguMzYsOTguMzYsMCwwLDAsOTguMzYsMFptODYuNDgsMTExYTIzLjIsMjMuMiwwLDAsMS0zNCwxNGwtMy4yNS0xLjg3LDMuMi01LjUzQTI3LjM2LDI3LjM2LDAsMCwwLDE1MS4yNyw5MWw4LjE2LDQuNzFhOC44NSw4Ljg1LDAsMCwwLDEyLjI1LTMuNTJsLjItLjQ0YTYwLjY2LDYwLjY2LDAsMCwwLDQuNTMtMzEuODdsLS4xOS0xLjQ2LjgsMS4xOWE2MC42MSw2MC42MSwwLDAsMSw4LjIxLDQ5LjlaIi8+PGNpcmNsZSBjbGFzcz0iY2xzLTMiIGN4PSI4Mi44NyIgY3k9IjEwMy44NSIgcj0iMTQuMzUiIHRyYW5zZm9ybT0ibWF0cml4KDAuMDEsIC0xLCAxLCAwLjAxLCAtMjIuMDcsIDE4NS4zNCkiLz48L2c+PC9zdmc+Cg==&logoColor=ff6900) ![](https://img.shields.io/badge/moomoo-opend-ff6900.svg?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMDAgMTUzLjcyIj4KICAgIDxkZWZzPgogICAgICAgIDxzdHlsZT4uY2xzLTF7ZmlsbDojMjYyNzJiO30uY2xzLTJ7ZmlsbDojZmY2OTAwO308L3N0eWxlPgogICAgPC9kZWZzPgogICAgPGcgaWQ9ImxheWVyLTEiIGRhdGEtbmFtZT0ibGF5ZXItMSI+CiAgICAgICAgPHBhdGggY2xhc3M9ImNscy0yIiBkPSJNMi42NSwxNTMuNTdIMTQuNzhBMy4xLDMuMSwwLDAsMCwxNy41MSwxNTJsLjgxLTEuNDdhMjguNzYsMjguNzYsMCwwLDEsMjEtMTQuNTlsMi43OC0uNDFhNC40Miw0LjQyLDAsMCwwLDQuMDYtMi42OWw0MS4yLTk2LjlhMS42MiwxLjYyLDAsMCwwLTEuODEtMi4yM2wtMi4xOS40NUM1OS4xMyw0MCw0Mi43NSw1NS4xMiwzMS43Miw3NS44M0wzMS4xOSw3N2wtMzEsNzNBMi42NSwyLjY1LDAsMCwwLDIuNjUsMTUzLjU3WiIvPgogICAgICAgIDxwYXRoIGNsYXNzPSJjbHMtMiIgZD0iTTUwLjU1LDE1My43Mkg4MC4zMmwxLjYtLjg4LDUuMS04LjEyYzI1LjIxLTQwLjEsODQuNTMtMzUuNDIsMTAzLjQ3LDcuNTJhMi40OSwyLjQ5LDAsMCwwLDIuMzEsMS40OGgyMWEyLjY1LDIuNjUsMCwwLDAsMi42NC0yLjkxbC01LjU2LTU3YTEsMSwwLDAsMC0yLS4xN2wtNC44OSwxNy42NWEyLjYsMi42LDAsMCwxLTIuODYsMS44OGwtMzMtNC40NGE2Ljg1LDYuODUsMCwwLDEtNS4xMy00TDE1MS4zLDc4YTIuNywyLjcsMCwwLDEsMi44Ny0zLjc1bDE5LjU4LDIuNjFhMi44NywyLjg3LDAsMCwxLDIuMzEsMS44NmwzLjMzLDlhMSwxLDAsMCwwLDEuODItLjA3bDMuMjgtMTEuODNhMi41OSwyLjU5LDAsMCwwLTIuMTUtMy4yNmwtMzguNTEtNS4xNGMtMjcuNDktMy42OC0zMi40LTQxLjM2LTYuNzctNTJsNy4zMy0zYTEsMSwwLDAsMSwxLjI4LDEuNDZsLTYuMjQsMTAuNTVhMTQsMTQsMCwwLDAsMTAuMiwyMWw0My4xLDUuNzZhMTEuMywxMS4zLDAsMCwwLDExLjU5LTE2LjI4TDIwMywzMi4yOGMtMjIuNDMtNDQuNi04Ni44LTQyLjUzLTEwNi4zMywzLjQybC0xLjIxLDIuODZMNDguMTIsMTUwLjA1QTIuNjQsMi42NCwwLDAsMCw1MC41NSwxNTMuNzJaIi8+CiAgICAgICAgPHBhdGggY2xhc3M9ImNscy0yIiBkPSJNMjEzLjUsNzYuNzNsNC0uNjVhMjIuMzUsMjIuMzUsMCwwLDAsMTIuNzItMzcuM2wtNi45My03YTEuMDcsMS4wNywwLDAsMC0xLjc3LDEuMDlsMy4wNyw5YTEwLjY2LDEwLjY2LDAsMCwxLTUsMTNoMFoiLz4KICAgIDwvZz4KPC9zdmc+&logoColor=ff6900) [![Buy Me A Coffee](https://img.shields.io/badge/buy%20me%20-coffee-%2322BC18.svg)](https://www.buymeacoffee.com/chasengao)

**中文 | [English](README.en.md)**

</div>

---

使用 Docker 运行 [富途 OpenD](https://openapi.futunn.com/futu-api-doc/opend/opend-intro.html) 或 moomoo OpenD，并通过自动化流程检查上游版本更新。

本项目不是富途或 moomoo 官方项目。使用本项目造成的任何问题由使用者自行承担。

## 文档

- [富途 OpenAPI 中文文档](https://openapi.futunn.com/futu-api-doc/)
- [命令行 OpenD（中文）](https://openapi.futunn.com/futu-api-doc/opend/opend-cmd.html)
- [操作命令（中文）](https://openapi.futunn.com/futu-api-doc/opend/opend-operate.html)

## 快速开始

### 使用 `docker run`

以下示例使用富途镜像。`login_pwd_md5` 是登录密码的 32 位 MD5 十六进制字符串；不要把真实账号或密码提交到代码仓库。

`docker run` 使用主机目录绑定挂载，把 OpenD 的设备登录状态保存到当前目录。这样容器重启后通常不需要再次输入手机验证码，也不需要重复完成设备验证。

```shell
docker run -d \
  --name opend \
  --restart unless-stopped \
  -p 11111:11111 \
  -v ./futu-opend-state:/root/.com.futunn.FutuOpenD/F3CNN \
  ghcr.io/chasenlab/futu-opend:latest \
  /docker-entrypoint.sh \
  -login_account=<account number> \
  -login_pwd_md5=<md5 string> \
  -api_port=11111 \
  -api_ip=0.0.0.0 \
  -telnet_port=22222 \
  -lang=chs
```

使用 moomoo 镜像时，将镜像替换为 `ghcr.io/chasenlab/moomoo-opend:latest`，并将 `-lang=chs` 改为 `-lang=en`。

更多启动参数请查看[命令行 OpenD 文档](https://openapi.futunn.com/futu-api-doc/en/opend/opend-cmd.html)。

### 使用 Docker Compose

编辑 [`docker-compose.yml`](docker-compose.yml) 后启动：

```shell
docker compose up -d
```

Compose 配置使用配置文件的绑定挂载和 Docker 命名卷保存 OpenD 状态。命名卷由 Docker 管理，不会在当前目录创建状态目录，例如：

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

如果使用 moomoo 镜像，请挂载对应的 `OpenD.xml`，并使用 moomoo 专用状态目录 `/root/.com.moomoo.OpenD/F3CNN`。

### 持久化手机验证码状态

首次登录或设备锁开启时，OpenD 可能要求输入手机验证码。验证码通过后，OpenD 会在状态目录中保存设备登录状态。容器重启时必须保留这个目录，否则可能再次触发验证码流程。

富途镜像使用以下目录：

```text
/root/.com.futunn.FutuOpenD/F3CNN
```

使用 `docker run` 时，可以使用宿主机目录绑定挂载它：

```shell
-v ./futu-opend-state:/root/.com.futunn.FutuOpenD/F3CNN
```

使用 Docker Compose 时，请使用命名卷：

```yaml
volumes:
  - futu-opend-state:/root/.com.futunn.FutuOpenD/F3CNN
```

moomoo 镜像使用不同的状态目录：

```text
/root/.com.moomoo.OpenD/F3CNN
```

请为 moomoo 单独使用对应的命名卷或宿主机目录，避免与富途状态目录混用。

注意：

- 只挂载 `/opend/FutuOpenD.xml` 不能保存验证码状态。
- 不要把状态目录提交到 Git 或公开分享，其中可能包含设备登录信息。
- 设备锁、账号、密码或登录环境发生变化时，仍可能需要重新验证。
- 删除命名卷、PVC 或宿主机状态目录后，下一次登录可能再次要求验证码。

### 输入手机验证码

OpenD 启动后，可以通过 Telnet 运维端口发送操作命令。官方操作命令说明见[中文文档](https://openapi.futunn.com/futu-api-doc/opend/opend-operate.html)和[英文文档](https://openapi.futunn.com/futu-api-doc/en/opend/opend-operate.html)。

```shell
docker exec -it opend bash
telnet 127.0.0.1 22222
input_phone_verify_code -code=<verification code>
```

如果容器没有安装 `bash`，可以使用：

```shell
docker exec -it opend sh
```

## 配置文件

- 富途：将 [`example.xml`](example.xml) 挂载为 `/opend/FutuOpenD.xml`。
- moomoo：将配置文件挂载为 `/opend/OpenD.xml`，并按镜像要求设置启动参数。
- 使用 `login_pwd_md5` 时，可以执行 `md5` 计算密码摘要：

  ```shell
  md5 -s '<your password>'
  ```

建议通过 Secret、环境变量或部署平台的密钥管理功能提供账号和密码，不要把真实凭据写入 XML、Compose 文件或命令历史。

## 镜像与架构

已发布镜像支持 `linux/amd64` 和 `linux/arm64`。富途当前只提供 x86-64 OpenD 二进制文件，因此 ARM64 镜像通过 QEMU 用户态模拟运行，性能可能低于 AMD64。

## 从源码构建

```shell
git clone https://github.com/chasenlab/futu-opend.git
cd futu-opend
```

构建富途多架构镜像：

```shell
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --build-arg BRAND=Futu \
  --build-arg DOMAIN=futunn.com \
  --build-arg BIN_NAME=FutuOpenD \
  -t futu-opend \
  -f Dockerfile .
```

构建 moomoo 多架构镜像：

```shell
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --build-arg BRAND=moomoo \
  --build-arg DOMAIN=futustatic.com \
  -t moomoo-opend \
  -f Dockerfile .
```

本地运行时使用单一架构和 `--load`：

```shell
docker buildx build --platform linux/arm64 --load \
  --build-arg BRAND=Futu \
  --build-arg DOMAIN=futunn.com \
  --build-arg BIN_NAME=FutuOpenD \
  -t futu-opend:arm64 .
```

## 测试

```shell
pip install -r requirements.txt
python main.py --addr <futu-opend-ip>
```

在中国大陆网络环境中，可以使用 PyPI 镜像：

```shell
pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
```

## 支持

[![get youtself link](https://img.shields.io/badge/get%20youtself%20link-buymeacoffee-orange.svg)](https://www.buymeacoffee.com/invite/chasengao)
