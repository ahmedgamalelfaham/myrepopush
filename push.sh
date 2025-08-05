echo "🔠 Downloading MesloLGS NF (for reference only)..."
FONT_DIR="/usr/share/fonts/nerd-fonts"
mkdir -p "$FONT_DIR"
cd "$FONT_DIR"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Meslo.zip -O Meslo.zip
unzip -o Meslo.zip
