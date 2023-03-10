#!/bin/bash

# Install base-devel group
sudo pacman -Sy --needed --noconfirm go nano vim  base-devel

# Install Yay from AUR
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm && cd .. && rm -rf yay

# Install packages with Yay
yay -Sy --needed --noconfirm hyprland-bin polkit-gnome ffmpeg neovim viewnior rofi pavucontrol thunar starship wl-clipboard wf-recorder swaybg grimblast-git ffmpegthumbnailer tumbler playerctl noise-suppression-for-voice thunar-archive-plugin kitty waybar-hyprland wlogout swaylock-effects sddm-git pamixer nwg-look-bin nordic-theme papirus-icon-theme dunst ttf-nerd-fonts-symbols-common otf-firamono-nerd

# Copy HyperLand config files
mkdir -p ~/.config && cp -r ./dotconfig/* ~/.config
