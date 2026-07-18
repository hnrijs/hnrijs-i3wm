# hnrijs i3wm
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/dc12bf2f-fcf2-4e3a-86ef-038bfe9bf3ea" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/89fea92a-9646-4df6-be0b-d3f750d7b783" />


## Required Packages

sudo pacman -S feh thunar rofi imv cava btop qalculate-gtk alacritty zip unzip polkit-gnome xclip maim power-profiles-daemon ttf-jetbrains-mono-nerd noto-fonts-emoji gtk3 fastfetch pavucontrol nwg-look mpv

yay -S materia-gtk-theme helium-browser-bin waypaper rofi-greenclip

install picom for transparency

install papirus-icon-theme for thunar icons

## Need to Execute

systemctl --user enable --now greenclip.service

sudo systemctl enable --now power-profiles-daemon

Do not forget to chmod +x /home/h/.config/polybar/launch.sh and other .sh files.


