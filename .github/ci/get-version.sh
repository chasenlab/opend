#!/bin/bash


#
#   This script is used to get the latest version of Futu OpenD / moomoo OpenD
#     Author: https://github.com/chasenio
#


URL="https://www.futunn.com/download/fetch-lasted-link?name=opend-ubuntu"

Response=$(curl -s -I "$URL")
Location=$(echo "${Response}" | grep -i '^location:' | cut -d ' ' -f2-)
Version=$(echo "$Location" | grep -o 'Futu_OpenD_[0-9]*\.[0-9]*\.[0-9]*' | sed 's/Futu_OpenD_//')
SourceVersion=$(cat Dockerfile | grep 'ARG BUILD_OPEND_VERSION' | cut -d '=' -f2)

if [ "$Version" != "$SourceVersion" ]; then # need to update
  echo "version=$Version"
  sed -i -e "s/$SourceVersion/${Version}/g" Dockerfile
else
  echo "version=no-update"
fi

