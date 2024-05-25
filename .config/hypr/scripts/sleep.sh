swayidle -w timeout 600 "swaylock -f --config ~/.config/swaylock/macchiato.conf" \
    timeout 1200 "systemctl suspend" \
    before-sleep "swaylock -f --config ~/.config/swaylock/macchiato.conf" &
