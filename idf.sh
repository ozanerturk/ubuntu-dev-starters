#!/bin/bash

# Update package list and install dependencies
sudo apt update
sudo apt install -y git wget flex bison gperf python3 python3-pip python3-setuptools python3-serial python3-click python3-cryptography python3-future python3-pyparsing python3-pyelftools cmake ninja-build ccache libffi-dev libssl-dev dfu-util

# Clone ESP-IDF repository
git clone --recursive https://github.com/espressif/esp-idf.git ~/esp-idf

# Install ESP-IDF tools (ESP32 and ESP8266)
cd ~/esp-idf
./install.sh

# Activate the ESP-IDF environment
source ~/esp-idf/export.sh

echo "ESP-IDF installation completed."
