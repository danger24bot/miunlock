#!/data/data/com.termux/files/usr/bin/bash

echo "================================="
echo "Mi Community Permission Installer"
echo "================================="

# Update packages
pkg update -y > /dev/null 2>&1

# Install python if missing
pkg install python -y > /dev/null 2>&1

# Create hidden folder
mkdir -p $HOME/.@helproot

echo "[*] Downloading tool..."

# Download main script
curl -L https://raw.githubusercontent.com/danger24bot/miunlock/main/MiCommunityTool.py \
-o $HOME/.@helproot/MiCommunityTool.py

# Create launcher command
echo '#!/data/data/com.termux/files/usr/bin/bash
python $HOME/.@helproot/MiCommunityTool.py "$@"' > $PREFIX/bin/@helproot

# Permission
chmod +x $PREFIX/bin/@helproot

echo ""
echo "[✓] Install Complete!"
echo "Made By [@HelpRoot]✓"
echo "Run tool using: @helproot"
