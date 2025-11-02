#!/bin/bash

# Installation script for WhatsApp Verification Simulator
# Educational Purpose Only

echo "========================================"
echo "WhatsApp Verification Simulator Installer"
echo "      Educational Purpose Only"
echo "========================================"
echo ""

# Check if running as root
if [ "$EUID" -eq 0 ]; then 
    echo "⚠️  Please don't run as root/sudo"
    exit 1
fi

# Make main script executable
chmod +x whatsapp_simulator.sh

# Create assets directory if it doesn't exist
mkdir -p assets

# Check if banner file exists, create if not
if [ ! -f "assets/banner.txt" ]; then
    echo "Creating banner file..."
    cat > assets/banner.txt << 'EOF'
_________  _____   ____  __.  _____   
\______  \/  _  \ |    |/ _| /     \  
    /    /  /_\  \|      <  /  \ /  \ 
   /    /    |    \    |  \/    Y    \
  /____/\____|__  /____|__ \____|__  /
                \/        \/       \/ 
EOF
fi

# Check system type and install dependencies if needed
if [ -d "/data/data/com.termux/files/usr" ]; then
    echo "Termux detected - checking dependencies..."
    pkg update -y
    pkg install -y bash git
else
    echo "Linux system detected - checking dependencies..."
    # Check if bash is available
    if ! command -v bash &> /dev/null; then
        echo "Installing bash..."
        sudo apt update && sudo apt install -y bash
    fi
fi

echo ""
echo "✅ Installation completed!"
echo ""
echo "To run the simulator:"
echo "./whatsapp_simulator.sh"
echo ""
echo "⚠️  REMEMBER: This tool is for EDUCATIONAL PURPOSES ONLY!"
echo ""