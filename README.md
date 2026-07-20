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




## Keybindings

Here are the essential shortcuts for managing this desktop environment (`$mod` refers to the **Super / Windows** key):

### Applications & Utilities

| Keybinding | Action |
| :--- | :--- |
| `$mod + Return` | Open Alacritty Terminal |
| `$mod + space` | Open Rofi App Launcher |
| `$mod + f` | Open Thunar File Manager |
| `$mod + b` | Open Helium Browser |
| `$mod + o` | Open OBS Studio |
| `$mod + c` | Open VS Code |
| `$mod + k` | Open Krita |
| `$mod + p` | Open ProtonVPN |
| `$mod + Shift + c` | Open Qalculate Calculator |
| `$mod + Shift + s` | Take Screenshot (Select area to Clipboard) |
| `$mod + v` | Open Greenclip Clipboard History (Rofi) |
| `$mod + Shift + v` | Clear Greenclip Clipboard History |

### Window Management & Layouts

| Keybinding | Action |
| :--- | :--- |
| `$mod + q` | Kill Focused Window |
| `$mod + Left / Down / Up / Right` | Change Window Focus |
| `$mod + Shift + Left / Down / Up / Right` | Move Focused Window |
| `$mod + s` | Change Layout to Stacking |
| `$mod + w` | Change Layout to Tabbed |
| `$mod + e` | Toggle Split Layout |
| `$mod + z` | Toggle Floating / Tiling Mode |
| `$mod + Shift + space` | Focus Toggle between Floating and Tiling |

### System & Power Management

| Keybinding | Action |
| :--- | :--- |
| `$mod + Shift + p` | Toggle Power Profiles (S / B / P) |
| `$mod + Shift + r` | Reload i3wm Configuration File |
| `$mod + Shift + t` | Restart i3wm In-place |
| `$mod + Shift + e` | Open Default i3wm Exit Log-out Bar |
| `$mod + Shift + L` | Lock Session |
| `$mod + Shift + H` | Hibernate System |
| `$mod + Shift + Y` | Reboot System |
| `$mod + Shift + U` | Shutdown System |

### Workspaces (1 - 10)

* **Switch Workspace:** `$mod + [1-0]`
* **Move Window to Workspace:** `$mod + Shift + [1-0]`


**Note:** Ignore the sections below if you are using `install.sh`!

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


