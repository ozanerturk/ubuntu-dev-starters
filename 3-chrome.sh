#!/bin/bash

# Download and install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Cleanup downloaded .deb file
rm google-chrome-stable_current_amd64.deb

echo "Google Chrome installation completed."
