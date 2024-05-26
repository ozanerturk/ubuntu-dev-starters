#!/bin/bash

# Install dependencies
sudo apt update
sudo apt install -y wget unzip libxrender1 libxtst6 libxi6

# Download Android Studio
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/4.2.2.0/android-studio-2020.1.1.0-linux.tar.gz -O android-studio.tar.gz

# Extract the downloaded archive
sudo tar -xvzf android-studio.tar.gz -C /opt/

# Create a symbolic link
sudo ln -s /opt/android-studio/bin/studio.sh /usr/local/bin/android-studio

# Cleanup downloaded archive
rm android-studio.tar.gz

echo "Android Studio installation completed."
