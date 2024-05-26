#!/bin/bash

# Install GNOME Tweaks
sudo apt install -y gnome-tweaks 
# Disable animations using GNOME Tweaks
gsettings set org.gnome.desktop.interface enable-animations false
# Dock on left
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'LEFT'
# Do not sleep on AC
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
# Do not sleep on battery
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
#show battery percentage
gsettings set org.gnome.desktop.interface show-battery-percentage true
#show seconds 
gsettings set org.gnome.desktop.interface clock-show-seconds true


echo "GNOME Tweaks installation completed. Reboot may required."
