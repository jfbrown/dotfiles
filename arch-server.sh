#!/bin/bash

set -e
set -x

USER=$(whoami)
GROUP=$(id -gn)
HERE="$HOME/dotfiles"
binpath=$HOME/.bin

# install packages
sudo pacman -S --needed \
  colordiff \
  cronie \
  ctags \
  dnsutils \
  gnupg \
  htop \
  iotop \
  ipcalc \
  linux-headers \
  lsof \
  nethogs \
  net-tools \
  openssh \
  openssl \
  parted \
  readline \
  ripgrep \
  rsync \
  sshpass \
  strace \
  sudo \
  sysdig \
  tmux \
  the_silver_searcher \
  traceroute \
  tree \
  unzip \
  vagrant \
  vim \
  wget \
  whois \
  zip \
  zsh

