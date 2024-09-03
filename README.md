
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

- zoxide
- yay

### editing
- nvim
- powerline-common
- powerline-fonts
- fzf
for latex:
- texlive
- texlive-langgerman

### fcitx5
- fcitx5-im
- fcitx5-mozc
    for Japanese input
- fcitx5-chinese-addons
    for Chinese input
- fcitx5-m17n
    more IMs (eg. Hindi)

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



