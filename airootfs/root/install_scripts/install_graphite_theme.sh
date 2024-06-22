#!/bin/bash

# Download and install the Graphite GTK theme
git clone https://github.com/vinceliuice/Graphite-gtk-theme.git /tmp/Graphite-gtk-theme
cd /tmp/Graphite-gtk-theme
./install.sh --tweaks darker

# Clean up
rm -rf /tmp/Graphite-gtk-theme
