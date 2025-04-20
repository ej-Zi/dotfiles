
## Packages
### general
- hyprland
- kitty
- rofi-wayland
- swaync
- waybar
- hyprpaper
- wleave-git
- swaylock-effects-git
- swayidle

- synology-drive
- stow

- hyprshot
optional:
- hyprshot-gui-git

- meson (for building Hyprland plugins with hyprpm)

### Z Shell
- zsh
- oh-my-zsh
    [ohmyzsh github](https://github.com/ohmyzsh/ohmyzsh)
- zsh-autosuggestions
- zsh-syntax-highlighting

- zoxide https://www.youtube.com/watch?v=aghxkpyRVDY
- yay

### editing
- nvim
- powerline-common
- powerline-fonts
- fzf
for latex:
- texlive5 5 
- texlive-langgerman

### fcitx5
- fcitx5-im
- fcitx5-mozc
    for Japanese input
- fcitx5-chinese-addons
    for Chinese input
- fcitx5-m17n
    more IMs (eg. Hindi)
- toki pona sitelen pona:
https://github.com/0x182d4454fb211940/ilo-sitelen/
ilo-sitelen-git

damit in Discord und anderen Electron Anwendungen funktioniert:
cp /usr/share/applications/discord.desktop ~/.local/share/applications
dort bearbeiten:
Exec=/usr/bin/discord --enable-feature=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime

### fonts
- ttf-fira-code-nerd
- ttf-jetbrains-mono-nerd

(other jp, cn, kr fonts also possible)
- adobe-source-han-sans-cn-fonts
- adobe-source-han-sans-jp-fonts
- adobe-source-han-sans-kr-fonts

### using stow for dotfiles
https://www.youtube.com/watch?v=y6XCebnB9gs

- mkdir .dotfiles (bzw. git clone git@github.com:ej-Zi/dotfiles.git)
- treat .dotfiles directory like $HOME (same hierarchy), put all config files + directories here
- in .dotfiles: stow .
    to symlink everything (also everytime new file or directory is created)
- README.md is ignored by stow by default

### audio
- pulseaudio
- pactl (PulseAudio Control)
- pavucontrol (PulseAudio Frontend)

pulseaudio-ctl can also be used to control volume
Don't have pulseaudio and pipewire installed at the same time!

### display manager
- ly
after installing: sudo systemctl enable ly
(disable other dm before)
