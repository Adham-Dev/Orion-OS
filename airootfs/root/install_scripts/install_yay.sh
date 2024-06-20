#!/bin/bash
set -e

# Install prerequisites
pacman -Sy --noconfirm base-devel git

# Download and build yay
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

# Clean up
cd /
rm -rf /tmp/yay
