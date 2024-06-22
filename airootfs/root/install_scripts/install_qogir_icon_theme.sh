#!/bin/bash

# Download and install the Qogir icon theme
git clone https://github.com/vinceliuice/Qogir-icon-theme.git /tmp/Qogir-icon-theme
cd /tmp/Qogir-icon-theme
./install.sh

# Clean up
rm -rf /tmp/Qogir-icon-theme

