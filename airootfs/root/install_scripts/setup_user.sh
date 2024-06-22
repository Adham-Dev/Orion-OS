#!/bin/bash

# Create a new user named 'orion' with a home directory and default shell
useradd -m -G wheel -s /bin/bash orion

# Set the password for 'orion' to 'orion' (change as needed)
echo "orion:orion" | chpasswd

# Set up sudoers file for the new user
echo "orion ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Copy skel files to the new user's home directory
cp -r /etc/skel/.* /home/orion

# Set ownership of the new home directory
chown -R orion:orion /home/orion
