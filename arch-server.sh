#!/bin/bash

source ./config.sh

# install packages
sudo pacman -S --needed \
  base-devel \
  bat \
  clang \
  cmake \
  colordiff \
  cronie \
  ctags \
  diff-so-fancy \
  dnsutils \
  docker \
  docker-compose \
  emacs \
  fd \
  git \
  gnupg \
  htop \
  jq \
  iotop \
  ipcalc \
  linux-headers \
  lsof \
  neovim \
  nethogs \
  net-tools \
  nfs-utils \
  ngrep \
  nmap \
  openssh \
  ovmf \
  pacman-contrib \
  parted \
  prettyping \
  python-pip \
  qemu \
  readline \
  ripgrep \
  rsync \
  rustup \
  sshfs \
  sshpass \
  strace \
  sudo \
  sysstat \
  tar \
  tmux \
  traceroute \
  tree \
  ttf-dejavu \
  ufw \
  unzip \
  vagrant \
  wget \
  whois \
  zip \
  zsh

sudo ln -fs "$(command -v nvim)" /usr/local/bin/vim

sudo systemctl enable ufw
sudo systemctl start ufw
sudo ufw status
sudo ufw default deny
sudo ufw limit ssh
sudo ufw status

# Install the neovim python3 interface
python -m pip install --user --upgrade pynvim

sudo usermod -aG docker "$(whoami)"

# Install yay for managing AUR packages
rm -rf /tmp/yay-bin
git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
(cd /tmp/yay-bin && makepkg -sric --needed)

yay -S --needed \
  --answerdiff None \
  --answeredit None \
  --answerclean NotInstalled \
  yq2-bin
