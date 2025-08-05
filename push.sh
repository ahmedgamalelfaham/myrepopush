#!/bin/bash

set -e

echo "🔧 Installing dependencies..."
dnf update -y
dnf install -y wget unzip fontconfig

echo "🚀 Installing Oh My Posh..."
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
chmod +x /usr/local/bin/oh-my-posh

echo "🎨 Downloading a theme..."
mkdir -p /etc/ohmyposh/themes
wget https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/jandedobbeleer.omp.json \
    -O /etc/ohmyposh/themes/jandedobbeleer.omp.json

echo "🔠 Installing Nerd Font (MesloLGS NF)..."
FONT_DIR="/usr/share/fonts/nerd-fonts"
mkdir -p "$FONT_DIR"
cd "$FONT_DIR"

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Meslo.zip
unzip Meslo.zip
fc-cache -fv
cd ~

echo "🧠 Configuring Oh My Posh for root user..."
echo 'eval "$(oh-my-posh init bash --config /etc/ohmyposh/themes/jandedobbeleer.omp.json)"' >> /root/.bashrc

echo "👥 Applying same config to /etc/skel for future users..."
echo 'eval "$(oh-my-posh init bash --config /etc/ohmyposh/themes/jandedobbeleer.omp.json)"' >> /etc/skel/.bashrc

echo "✅ Done! You may need to use a Nerd Font in your terminal emulator to see the prompt properly."
