#!/bin/sh
set -eu; # exit on error or unset variable.

cat <<-__APK_REPO_LIST__ | tee /etc/apk/repositories
https://dl-cdn.alpinelinux.org/alpine/edge/main
https://dl-cdn.alpinelinux.org/alpine/edge/community
https://dl-cdn.alpinelinux.org/alpine/edge/testing
__APK_REPO_LIST__

apk add -u --no-cache \
  asciidoctor \
  bash \
  bat \
  busybox-extras \
  ca-certificates \
  coreutils \
  curl \
  doctl \
  git \
  github-cli \
  grep \
  grep \
  jq \
  kubectl \
  less \
  ngrep \
  openssh-client \
  psmisc \
  ripgrep \
  rsync \
  sed \
  shadow \
  terraform \
  time \
  tzdata \
  unzip \
  vault \
  vim \
  wget \
  which \
  yq \
  zip \
  zola && rm -rf /var/cache/apk

# Set the default shell to be bash (instead of ash, the default).
sed -i -e 's#/ash/#/bash/#' /etc/passwd
