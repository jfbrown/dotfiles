#!/bin/bash

set -e
set -x

USER=$(whoami)
GROUP=$(id -gn)
HERE="$HOME/dotfiles"
binpath=$HOME/.bin

# install packages
sudo pacman -Syy --needed \
  ack \
  colordiff \
  cronie \
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
  parted \
  pssh \
  readline \
  rsync \
  sshpass \
  sudo \
  tmux \
  traceroute \
  unzip \
  vagrant \
  vim \
  wget \
  zip \
  zsh

