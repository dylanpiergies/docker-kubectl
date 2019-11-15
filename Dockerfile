FROM alpine

ARG kubectl_version=v1.16.3
ARG kubectl_os=linux
ARG kubectl_arch=amd64

RUN set -eu \
  && wget https://storage.googleapis.com/kubernetes-release/release/$kubectl_version/bin/$kubectl_os/$kubectl_arch/kubectl -O /usr/local/bin/kubectl \
  && chmod 755 /usr/local/bin/kubectl
