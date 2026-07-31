# futu-opend Agent Guidelines

## Scope

This repository builds and publishes Docker images for Futu OpenD and moomoo OpenD. Keep changes focused on image builds, container startup, documentation, and container verification.

## Documentation

- `README.md` is the default Chinese documentation.
- `README.en.md` is the standalone English documentation.
- Any change to setup, startup parameters, image names, ports, mounted paths, verification flow, or operational commands must update both README files.
- Keep the official Futu links accurate. English OpenD links use `/en/opend/`; Chinese links use `/zh/opend/`.
- The Futu verification state path used by this image is `/root/.com.futunn.FutuOpenD/F3CNN`. Documentation must explain that it needs a persistent Docker volume, host directory, or PVC when avoiding repeated mobile verification after restarts.

## Container and security rules

- Do not commit real account credentials, password digests, tokens, device state, or generated runtime data.
- Preserve non-root and least-privilege settings when changing deployment examples.
- Keep API port `11111` and Telnet operations port `22222` explicit in examples when the operation requires them.
- Do not expose the Telnet operations port publicly unless the user explicitly requests it and the security implications are documented.

## Change boundaries

- Preserve existing user changes in the working tree.
- Avoid changing generated artifacts or unrelated repositories.
- Keep Docker image changes compatible with both `linux/amd64` and `linux/arm64` unless the task explicitly narrows support.
- Do not change upstream OpenD behavior or vendor binaries without documenting the version and reason.

## Validation

After documentation changes, verify that both README files contain the same operational topics and that all referenced local files exist. For Docker or shell changes, run the narrowest available validation first, then build or test when practical.

Useful checks:

```shell
git diff --check
docker build --check .
```

Do not run a real broker login or send trading commands as part of automated validation.
