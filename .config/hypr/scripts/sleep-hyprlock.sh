swayidle -w timeout 900 "hyprlock" \
    timeout 1200 "systemctl suspend" \
    before-sleep "hyprlock" &
