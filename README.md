# Arch Linux Configuration Guide

A guide for configuring an Arch Linux environment with Hyprland.

## Packages

### General System Components
- `hyprland` - Tiling Wayland compositor
- `kitty` - GPU-accelerated terminal emulator
- `rofi-wayland` - Application launcher for Wayland
- `swaync` - Notification daemon for Wayland
- `waybar` - Customizable status bar
- `hyprpaper` - Wallpaper manager for Hyprland
- `wleave-git` - Session management menu
- `swaylock-effects-git` - Screen locker with visual effects
- `swayidle` - Idle management daemon
- `synology-drive` - Synology Drive client
- `stow` - Symlink farm manager for dotfiles
- `hyprshot` - Screenshot utility for Hyprland
- `meson` - Build system (required for building Hyprland plugins with hyprpm)

**Optional:**
- `hyprshot-gui-git` - GUI interface for Hyprshot

### Shell Environment
- `zsh` - Z shell
- `oh-my-zsh` - Framework for managing Zsh configuration ([GitHub repository](https://github.com/ohmyzsh/ohmyzsh))
- `zsh-autosuggestions` - Fish-like autosuggestions for Zsh
- `zsh-syntax-highlighting` - Syntax highlighting for Zsh
- `zoxide` - Smarter cd command ([Tutorial video](https://www.youtube.com/watch?v=aghxkpyRVDY))
- `yay` - AUR helper

### Text Editing
- `nvim` - Neovim text editor
- `powerline-common` - Statusline plugin
- `powerline-fonts` - Fonts for Powerline
- `fzf` - Fuzzy finder

**For LaTeX:**
- `texlive5` - TeX Live distribution
- `texlive-langgerman` - German language support for TeX Live

### Input Methods (fcitx5)
- `fcitx5-im` - Input method framework
- `fcitx5-mozc` - Japanese input support
- `fcitx5-chinese-addons` - Chinese input support
- `fcitx5-m17n` - Additional input methods (e.g., Hindi)

**Sitelen Pona:**
- `ilo-sitelen-git` - [GitHub repository](https://github.com/0x182d4454fb211940/ilo-sitelen/)

**For Electron applications (Discord, Obsidian, etc.):**
```bash
cp /usr/share/applications/discord.desktop ~/.local/share/applications
```

Edit the file and change the Exec line to:
```
Exec=/usr/bin/discord --enable-feature=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime
```

Reference: [Fcitx5 Wiki - Using on Wayland](https://fcitx-im.org/wiki/Using_Fcitx_5_on_Wayland#Chromium_.2F_Electron)

### Fonts
- `ttf-fira-code-nerd` - Fira Code with Nerd Fonts patches
- `ttf-jetbrains-mono-nerd` - JetBrains Mono with Nerd Fonts patches

**Chines, Japanese, Korean fonts (other fonts also possible):**
- `adobe-source-han-sans-cn-fonts` - Chinese fonts
- `adobe-source-han-sans-jp-fonts` - Japanese fonts
- `adobe-source-han-sans-kr-fonts` - Korean fonts

[Sitelen Pona font](https://github.com/ETBCOR/nasin-nanpa)

### Dotfiles Management with Stow
Reference tutorial: [YouTube - Managing dotfiles with GNU Stow](https://www.youtube.com/watch?v=y6XCebnB9gs)

1. Create dotfiles directory:
```bash
mkdir .dotfiles
# or clone existing repository:
# git clone git@github.com:ej-Zi/dotfiles.git
```

2. Treat `.dotfiles` directory like `$HOME` (same hierarchy)
3. Place all config files and directories within `.dotfiles`
4. Apply symlinks:
```bash
cd .dotfiles
stow .
```

**Note:** Run the `stow` command each time you add new files or directories. The `README.md` file is ignored by stow by default.

### Audio
- `pulseaudio` - Sound server
- `pactl` - PulseAudio control utility
- `pavucontrol` - PulseAudio volume control GUI

**Note:** `pulseaudio-ctl` can also be used to control volume. Don't have both PulseAudio and Pipewire installed simultaneously.

### Display Manager
- `ly` - Minimal display manager

After installing:
```bash
sudo systemctl enable ly
```
(Make sure to disable any other display manager first)
