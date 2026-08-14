ARG TARGETARCH

FROM --platform=linux/amd64 ubuntu:22.04 AS amd64-runtime

RUN mkdir -p /x86_64-libs \
    && for library in \
        ld-linux-x86-64.so.2 \
        libc.so.6 \
        libdl.so.2 \
        libgcc_s.so.1 \
        libm.so.6 \
        libpthread.so.0 \
        libstdc++.so.6 \
        libz.so.1; do \
        cp -L "/usr/lib/x86_64-linux-gnu/${library}" /x86_64-libs/; \
    done

FROM ubuntu:22.04 AS opend

ARG BRAND=unspecified
ARG DOMAIN=unspecified
ARG BUILD_OPEND_VERSION=
ARG OPEND_DIR=/opend
ARG BIN_NAME=OpenD

# metadata
LABEL org.opencontainers.image.maintainer="ChasenLbas <chasen.space@gmail.com>"
LABEL org.opencontainers.image.description="${BRAND} OpenD Docker Image"

# xxxx_OpenD__Ubuntu18.04.tar.gz
ARG OPEND_PREFIX=${BRAND}_OpenD_${BUILD_OPEND_VERSION}_Ubuntu18.04
ARG OPEND_FILE=${OPEND_PREFIX}.tar.gz

# Download OpenD package
# https://softwaredownload.futunn.com/Futu_OpenD__Ubuntu18.04.tar.gz
# https://softwaredownload.futustatic.com/moomoo_OpenD__Ubuntu18.04.tar.gz
ARG OPEND_URL=https://softwaredownload.${DOMAIN}/${OPEND_FILE}

ENV OPEND_VERSION=${BUILD_OPEND_VERSION}
ENV LANG=C.UTF-8
ENV OPEND_BIN=${OPEND_DIR}/${BIN_NAME}

COPY docker-entrypoint.sh .

WORKDIR ${OPEND_DIR}

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    tar \
    telnet \
    && curl --fail --location --output /tmp/opend.tar.gz "${OPEND_URL}" \
    && tar -zxvf /tmp/opend.tar.gz -C /tmp/ \
    && mkdir -p ${OPEND_DIR} \
    && ls /tmp/ \
    && cp -r /tmp/${OPEND_PREFIX}/${OPEND_PREFIX}/* ${OPEND_DIR} \
    && rm -rf /tmp/* \
    && rm -rf /var/lib/apt/lists/*

CMD ["/docker-entrypoint.sh"]

FROM opend AS runtime-amd64

FROM opend AS arm64-emulator

RUN apt-get update && apt-get install -y --no-install-recommends \
    qemu-user-static \
    && rm -rf /var/lib/apt/lists/*

FROM opend AS runtime-arm64

COPY --from=arm64-emulator /usr/bin/qemu-x86_64-static /usr/bin/qemu-x86_64-static
COPY --from=amd64-runtime /x86_64-libs/ /usr/lib/x86_64-linux-gnu/
COPY --from=amd64-runtime /x86_64-libs/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2

ENV OPEND_EMULATOR=/usr/bin/qemu-x86_64-static

FROM runtime-${TARGETARCH} AS final
