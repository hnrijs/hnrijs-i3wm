#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting installation..."

# 1. Create default user directories including Pictures
echo "Creating user directories..."
mkdir -p "$HOME/Documents" "$HOME/Music" "$HOME/Downloads" "$HOME/Pictures" "$HOME/Videos" "$HOME/.config"

# 2. Install official pacman packages
sudo pacman -S --needed --noconfirm git wget base-devel feh thunar rofi imv cava btop \
    qalculate-gtk alacritty zip unzip polkit-gnome xclip maim power-profiles-daemon \
    ttf-jetbrains-mono-nerd noto-fonts-emoji gtk3 fastfetch pavucontrol nwg-look mpv \
    brightnessctl xsettingsd materia-theme papirus-icon-theme micro playerctl

# 3. Check and install yay AUR helper
if ! command -v yay &> /dev/null; then
    echo "Installing yay..."
    mkdir -p /tmp/yay-build
    git clone https://aur.archlinux.org/yay.git /tmp/yay-build/yay
    cd /tmp/yay-build/yay
    makepkg -si --noconfirm
    cd -
    rm -rf /tmp/yay-build
fi

# 4. Install AUR packages
yay -S --noconfirm helium-browser-bin waypaper rofi-greenclip

# 5. Copy configuration files dynamically
echo "Copying configuration files..."
if [ -d "$SCRIPT_DIR/config" ]; then
    cp -r "$SCRIPT_DIR/config/"* "$HOME/.config/"
else
    echo "Error: config folder not found in git repository!"
    exit 1
fi

# 6. Copy wallpaper to the user's Pictures folder
if [ -f "$SCRIPT_DIR/main.png" ]; then
    echo "Moving wallpaper to $HOME/Pictures/main.png..."
    cp "$SCRIPT_DIR/main.png" "$HOME/Pictures/main.png"
else
    echo "Warning: main.png not found in repository root, skipping wallpaper copy."
fi

# 7. Make all scripts executable automatically
if [ -d "$HOME/.config/i3/scripts" ]; then
    echo "Making scripts executable..."
    chmod +x "$HOME/.config/i3/scripts/"*
fi

# 8. Dynamically fix hardcoded home paths in config files for the new user
echo "Fixing home directory paths..."
if [ -f "$HOME/.config/i3/config" ]; then
    sed -i "s|/home/h/|$HOME/|g" "$HOME/.config/i3/config"
fi

# 9. Enable system services
echo "Enabling services..."
systemctl --user enable --now greenclip.service
sudo systemctl enable --now power-profiles-daemon

echo "Installation complete!"
