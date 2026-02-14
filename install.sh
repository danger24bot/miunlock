#!/data/data/com.termux/files/usr/bin/bash

echo "================================="
echo "   MiHelproot Installer"
echo "================================="

# Update packages
pkg update -y > /dev/null 2>&1

# Install python if missing
pkg install python -y > /dev/null 2>&1

# Create hidden folder
mkdir -p $HOME/.mihelproot

echo "[*] Downloading tool..."

# Download main script
curl -L https://raw.githubusercontent.com/danger24bot/miunlock/main/MiCommunityTool.py \
-o $HOME/.mihelproot/MiCommunityTool.py

# Create launcher command
echo '#!/data/data/com.termux/files/usr/bin/bash
python $HOME/.mihelproot/MiCommunityTool.py "$@"' > $PREFIX/bin/mihelproot

# Permission
chmod +x $PREFIX/bin/mihelproot

echo ""
echo "[✓] Install Complete!"
echo "Made By [@HelpRoot]✓"
echo "Run tool using: mihelproot"
