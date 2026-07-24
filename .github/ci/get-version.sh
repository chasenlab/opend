#!/bin/bash

set -euo pipefail

#
#   This script is used to get the latest version of Futu OpenD / moomoo OpenD
#     Author: https://github.com/chasenio
#


URL="https://www.futunn.com/download/fetch-lasted-link?name=opend-ubuntu"

Response=$(curl --fail --silent --show-error --head "$URL")
Location=$(printf '%s\n' "$Response" | grep -i '^location:' | head -n 1 | cut -d ' ' -f2- | tr -d '\r' || true)
Version=$(printf '%s\n' "$Location" | sed -nE 's/.*Futu_OpenD_([0-9]+\.[0-9]+\.[0-9]+).*/\1/p')
SourceVersion=$(sed -nE 's/^ARG BUILD_OPEND_VERSION=([0-9]+\.[0-9]+\.[0-9]+)$/\1/p' Dockerfile)

if [[ ! "$Version" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "Unable to detect a valid OpenD version from redirect: $Location" >&2
  exit 1
fi

if [[ ! "$SourceVersion" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "Dockerfile contains an invalid OpenD version: $SourceVersion" >&2
  exit 1
fi

if [[ "$Version" == "$SourceVersion" ]]; then
  echo "version=no-update"
  exit 0
fi

HighestVersion=$(printf '%s\n%s\n' "$SourceVersion" "$Version" | sort -V | tail -n 1)
if [[ "$HighestVersion" != "$Version" ]]; then
  echo "Refusing to downgrade OpenD from $SourceVersion to $Version" >&2
  exit 1
fi

echo "version=$Version"
SourceVersionPattern=${SourceVersion//./\\.}
sed -i -e "s/$SourceVersionPattern/${Version}/g" Dockerfile
