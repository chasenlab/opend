# ARM64 Image Design

## Background

Futu and moomoo currently publish Linux OpenD packages containing x86-64
executables and shared libraries. The main executable reports:

```text
ELF 64-bit LSB executable, x86-64
```

There is no native ARM64 OpenD package available at the time of writing.

## Current Approach

The image is published for both `linux/amd64` and `linux/arm64`.

- The AMD64 image runs OpenD directly.
- The ARM64 image uses an ARM64 Ubuntu userspace.
- The ARM64 image includes `qemu-x86_64-static` and the minimum x86-64 runtime
  libraries required by OpenD.
- The entrypoint invokes the main OpenD executable through QEMU on ARM64.
- Runtime emulation is contained in the image and does not require the host to
  register `binfmt_misc`.

The XML configuration format, bind mounts, API ports, Telnet ports, and login
arguments are architecture-independent and are expected to work unchanged.

## Known Risk

The current entrypoint only invokes the main OpenD executable through QEMU.
OpenD may start other x86-64 executables directly, including:

- `FTUpdate`
- `FTWebSocket`
- monitor or watchdog processes

On an ARM64 host without x86-64 `binfmt_misc` support, a directly executed
helper may fail with `exec format error`. Basic startup can succeed while
configuration paths that enable WebSocket, update, or monitor behavior still
fail.

## Deferred Wrapper Proposal

If real ARM64 testing confirms the helper-process issue, wrap every packaged
x86-64 executable instead of wrapping only the main process:

1. Rename each executable to `<name>.x86_64`.
2. Create a native shell script at the original path.
3. Have the script execute its renamed binary through QEMU:

```sh
#!/bin/sh
exec /usr/bin/qemu-x86_64-static "${0}.x86_64" "$@"
```

The ARM64 build should apply this to the configured main executable,
`FTUpdate`, and `FTWebSocket`. The AMD64 image should remain unchanged.

This wrapper proposal is intentionally not implemented yet. It should be added
only if testing the published ARM64 image demonstrates that child executables
cannot be started reliably.

## ARM64 Validation

Before considering ARM64 support complete, validate the published image on an
ARM64 Linux host without host-level x86-64 emulation:

1. Confirm the image manifest resolves to `linux/arm64`.
2. Run `OpenD -help`.
3. Start OpenD with an XML configuration and complete login.
4. Connect to the OpenAPI port.
5. Exercise Telnet operations.
6. Enable WebSocket and verify `FTWebSocket` starts.
7. Verify monitor/watchdog and update behavior.
