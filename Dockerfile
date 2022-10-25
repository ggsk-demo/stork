FROM ubuntu:20.04
MAINTAINER Portworx Inc. <support@portworx.com>

ARG VERSION=master
ARG RELEASE=latest
LABEL name="Stork" \
       vendor="Openstorage.org" \
       version=${VERSION} \
       release=${RELEASE} \
       summary="Storage Operator Runtime for Kubernetes" \
       description="Stork is a Cloud Native storage operator runtime scheduler plugin"

WORKDIR /

COPY ./LICENSE /licenses
COPY ./bin/stork /
