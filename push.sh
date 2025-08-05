#!/bin/bash
set -e

echo "🔧 Updating system..."
dnf update -y
dnf install -y wget unzip

echo "🚀 Installing Oh My Posh..."
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 \
    -O /usr/local/bin/oh-my-posh
chmod +x /usr/local/bin/oh-my-posh

echo "🎨 Downloading a theme..."
mkdir -p /etc/ohmyposh/themes
wget https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/jandedobbeleer.omp.json \
    -O /etc/ohmyposh/themes/jandedobbeleer.omp.json

echo "🧠 Configuring Oh My Posh for root user..."
echo 'eval "$(oh-my-posh init bash --config /etc/ohmyposh/themes/jandedobbeleer.omp.json)"' >> /root/.bashrc

echo "👥 Applying same config to /etc/skel for future users..."
echo 'eval "$(oh-my-posh init bash --config /etc/ohmyposh/themes/jandedobbeleer.omp.json)"' >> /etc/skel/.bashrc

echo "✅ Setup complete. Remember to install and use a Nerd Font (like MesloLGS NF) in your local terminal."
