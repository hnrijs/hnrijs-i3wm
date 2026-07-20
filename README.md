# hnrijs i3wm
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/dc12bf2f-fcf2-4e3a-86ef-038bfe9bf3ea" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/89fea92a-9646-4df6-be0b-d3f750d7b783" />



## Installation

To install this i3wm setup automatically, clone the repository, make the installer executable, run it, and then reboot your system.

```bash
# 1. Clone the repository and enter the directory
git clone https://github.com/hnrijs/hnrijs-i3wm
cd hnrijs-i3wm

# 2. Make the install script executable and run it
chmod +x install.sh
./install.sh

# 3. Reboot your system to apply all changes and services
sudo reboot
```


## IGNORE IF EXECUTING INSTALL.SH!





## Required Packages

```bash
sudo pacman -S git wget base-devel feh thunar rofi imv cava btop qalculate-gtk alacritty zip unzip polkit-gnome xclip maim power-profiles-daemon ttf-jetbrains-mono-nerd noto-fonts-emoji gtk3 fastfetch pavucontrol nwg-look mpv brightnessctl
```
```bash
yay -S helium-browser-bin waypaper rofi-greenclip
```
install picom for transparency

install materia-gtk-theme for darker thunar

install papirus-icon-theme for thunar icons

## Need to Execute

```bash
systemctl --user enable --now greenclip.service

sudo systemctl enable --now power-profiles-daemon
```
Do not forget to chmod
```bash

chmod +x /home/h/.config/i3/scripts/i3exit.sh

chmod +x /home/h/.config/i3/scripts/power_profile.sh
```


