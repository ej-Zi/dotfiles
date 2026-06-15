swayidle -w timeout 900 "swaylock -f --config ~/.config/swaylock/macchiato.conf" \
    timeout 1200 "systemctl suspend" \
    before-sleep "swaylock -f --config ~/.config/swaylock/macchiato.conf" &
