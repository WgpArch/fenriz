#!/bin/bash

# Path to your theme
THEME="$HOME/.config/fenriz/rofi/fenriz.rasi"

# Define the options
options="Shutdown\nReboot\nLock\nSuspend\nLogout\nCancel"

# Show the menu using the spitfire theme
chosen=$(echo -e "$options" | rofi -dmenu -i -theme "$THEME" -p "Power")

# Execute the chosen command
case "$chosen" in
    Shutdown)
        systemctl poweroff ;;
    Reboot)
        systemctl reboot ;;
    Lock)
        swaylock ;;
    Suspend)
        systemctl suspend ;;
    Logout)
        fenrizctl exit ;;
    Cancel)
        exit 0 ;;
esac
