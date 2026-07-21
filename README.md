# hnrijs i3wm
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a39e795d-6577-468f-b950-6bb904709b88" />


<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/8f191a0e-5d17-4f5c-b9f4-7bf383d7cbf6" />




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




# Keybindings

Here are the essential shortcuts for managing this desktop environment (`$mod` refers to the **Super / Windows** key):

### Applications & Utilities

| Keybinding | Action |
| :--- | :--- |
| `$mod + Return` | Open Alacritty Terminal |
| `$mod + Space` | Open Rofi App Launcher |
| `$mod + F` | Open Thunar File Manager |
| `$mod + B` | Open Helium Browser |
| `$mod + Shift + S` | Take Screenshot (Select area to Clipboard) |
| `$mod + V` | Open Greenclip Clipboard History (Rofi) |
| `$mod + Shift + V` | Clear Greenclip Clipboard History |

### Maintenance & Tools

| Keybinding | Action |
| :--- | :--- |
| `$mod + Shift + K` | Open Qalculate Calculator |
| `$mod + Shift + C` | Run System Maintenance & Cleanup Script |
| `$mod + Shift + U` | Run Full System Update (Pacman + AUR) |
| `$mod + Shift + N` | Open Network Manager (nmtui) in Terminal ||

### System & Power Management

| Keybinding | Action |
| :--- | :--- |
| `$mod + Shift + L` | Lock Session |
| `$mod + Escape` | Rofi Power Menu |
| `$mod + Shift + P` | Toggle Power Profiles (S / B / P) |
| `$mod + Shift + R` | Reload i3wm Configuration File |
| `$mod + Shift + T` | Restart i3wm In-place |
| `$mod + Shift + E` | Open Default i3wm Exit Log-out Bar |

### Window Management & Layouts

| Keybinding | Action |
| :--- | :--- |
| `$mod + Q` | Kill Focused Window |
| `$mod + Left / Down / Up / Right` | Change Window Focus |
| `$mod + Shift + Left / Down / Up / Right` | Move Focused Window |
| `$mod + S` | Change Layout to Stacking |
| `$mod + W` | Change Layout to Tabbed |
| `$mod + E` | Toggle Split Layout |
| `$mod + Z` | Toggle Floating / Tiling Mode |
| `$mod + Shift + Space` | Focus Toggle between Floating and Tiling |

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






