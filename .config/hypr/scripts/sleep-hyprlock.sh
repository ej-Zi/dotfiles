swayidle -w timeout 600 "hyprlock" \
    timeout 1200 "systemctl suspend" \
    before-sleep "hyprlock" &
