FROM ubuntu:22.04

ARG BRAND=unspecified
ARG DOMAIN=unspecified
ARG BUILD_OPEND_VERSION=10.2.6208
ARG OPEND_DIR=/opend
ARG BIN_NAME=OpenD

# metadata
LABEL org.opencontainers.image.maintainer="ChasenLbas <chasen.space@gmail.com>"
LABEL org.opencontainers.image.description="${BRAND} OpenD Docker Image"

# xxxx_OpenD_10.2.6208_Ubuntu18.04.tar.gz
ARG OPEND_PREFIX=${BRAND}_OpenD_${BUILD_OPEND_VERSION}_Ubuntu18.04
ARG OPEND_FILE=${OPEND_PREFIX}.tar.gz

# Download OpenD package
# https://softwaredownload.futunn.com/Futu_OpenD_10.2.6208_Ubuntu18.04.tar.gz
# https://softwaredownload.futustatic.com/moomoo_OpenD_10.2.6208_Ubuntu18.04.tar.gz
ARG OPEND_URL=https://softwaredownload.${DOMAIN}/${OPEND_FILE}

ENV OPEND_VERSION  ${BUILD_OPEND_VERSION}
ENV LANG C.UTF-8
ENV OPEND_BIN ${OPEND_DIR}/${BIN_NAME}

COPY docker-entrypoint.sh .

WORKDIR ${OPEND_DIR}

RUN apt-get update && apt-get install -y \
    curl \
    tar \
    telnet \
    && curl -o /tmp/opend.tar.gz ${OPEND_URL} \
    && tar -zxvf /tmp/opend.tar.gz -C /tmp/ \
    && mkdir -p ${OPEND_DIR} \
    && ls /tmp/ \
    && cp -r /tmp/${OPEND_PREFIX}/${OPEND_PREFIX}/* ${OPEND_DIR} \
    && rm -rf /tmp/* \
    && rm -rf /var/lib/apt/lists/*

CMD ["/docker-entrypoint.sh"]
