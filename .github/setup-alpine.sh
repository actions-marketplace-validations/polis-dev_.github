#!/bin/sh
set -eu; # exit on error or unset variable.

cat <<-__APK_REPO_LIST__ | tee /etc/apk/repositories
https://dl-cdn.alpinelinux.org/alpine/edge/main
https://dl-cdn.alpinelinux.org/alpine/edge/community
https://dl-cdn.alpinelinux.org/alpine/edge/testing
__APK_REPO_LIST__

apk add -u --no-cache \
  busybox-extras ca-certificates coreutils psmisc grep less openssh-client vim \
  ripgrep grep ngrep sed shadow which wget zip unzip tzdata jq bash \
  zola bat yq curl doctl git rsync github-cli vault asciidoctor kubectl

# Set the default shell to be bash (instead of ash, the default).
sed -i -e 's#/ash/#/bash/#' /etc/passwd
