#!/bin/bash

# Install GNOME Tweaks
sudo apt install -y gnome-tweaks 

# Disable animations using GNOME Tweaks
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'LEFT'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.desktop.interface enable-animations false


echo "GNOME Tweaks installation completed. Reboot may required."
