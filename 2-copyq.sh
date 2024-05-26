sudo apt install copyq


#setting a shourtcut as Super V
#!/bin/bash

# Define the name, command, and shortcut
NAME="CopyQ"
COMMAND="/usr/bin/copyq show"
SHORTCUT="<Super>v"

# Check if the shortcut already exists
if [ -f "/home/$USER/.config/autostart/$NAME.desktop" ]; then
    echo "$NAME already exists.."
else
    echo "$NAME does not exist. Creating..."
    #Create a desktop file
    echo "[Desktop Entry]" > "/home/$USER/.config/autostart/$NAME.desktop"
    echo "Name=$NAME" >> "/home/$USER/.config/autostart/$NAME.desktop"
    echo "Exec=$COMMAND" >> "/home/$USER/.config/autostart/$NAME.desktop"
    echo "Type=Application" >> "/home/$USER/.config/autostart/$NAME.desktop"
    echo "X-KDE-autostart-after=panel" >> "/home/$USER/.config/autostart/$NAME.desktop"
    echo "X-KDE-StartupNotify=false" >> "/home/$USER/.config/autostart/$NAME.desktop"
    echo "X-KDE-UniqueApplet=true" >> "/home/$USER/.config/autostart/$NAME.desktop"
fi

#set the shortcut

custom_binding="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom120/"

CURRENT_SETTING=$(gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings)
NEW_BINDINGS="['$custom_binding']"
#if CURRENT_SETTING output equals to @as []
if [ "$CURRENT_SETTING" = "@as []" ]; then
    echo "Setting is empty"
else
    NEW_BINDINGS="$(echo $CURRENT_SETTING | sed  's/]//'), '$custom_binding']"
fi

echo "New setting: $NEW_BINDINGS"
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "$NEW_BINDINGS"

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$custom_binding name "$NAME"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$custom_binding command "$COMMAND"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$custom_binding binding "$SHORTCUT"

