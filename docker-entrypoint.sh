#!/bin/bash

set -x

echo "Futu OpenD Install Dir: ${OPEND_BIN}"

# Start OpenD
echo "Starting ${OPEND_BIN}..."
if [[ -n "${OPEND_EMULATOR:-}" ]]; then
    exec "${OPEND_EMULATOR}" "${OPEND_BIN}" "$@"
fi

exec "${OPEND_BIN}" "$@"
