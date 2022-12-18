# This code enables us to install a cloud instance linux distribution of our choice. But for this case we shall be using Ubuntu to automate the installation of the distribution of Ubuntu.
#!/bin/bash

# Update the package manager
apt-get update

# Install Ubuntu
apt-get install -y ubuntu-server

# Add a user
adduser <username>

# Set the user's password
echo "<username>:<password>" | chpasswd

# Add the user to the sudo group
usermod -aG sudo <username>

# Reboot the instance to apply the changes
reboot
