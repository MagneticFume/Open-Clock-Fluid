#!/bin/bash
# Installation script for Open Clock Fluid Conky

echo "========================================="
echo "Open Clock Fluid - Conky Clock Installer"
echo "========================================="
echo ""

# Check if conky is installed
if ! command -v conky &> /dev/null; then
    echo "Conky is not installed. Installing conky..."
    sudo apt update
    sudo apt install -y conky-all
else
    echo "✓ Conky is already installed."
fi

# Check if Helvetica Neue font is installed
if fc-list | grep -i "helvetica neue" > /dev/null; then
    echo "✓ Helvetica Neue font is already installed."
else
    echo "⚠ Helvetica Neue not found, trying Roboto as fallback..."
    if fc-list | grep -i "roboto" > /dev/null; then
        echo "✓ Using Roboto font (iPhone-like alternative)"
        # Auto-switch to Roboto in config
        sed -i 's/Helvetica Neue/Roboto/g' ~/.conkyrc
    else
        echo "⚠ Neither font found. Install fonts-liberation for clean sans-serif fonts:"
        echo "  sudo apt install fonts-liberation"
    fi
fi

# Create .conky directory in home
echo ""
echo "Setting up configuration files..."
mkdir -p ~/.conky

# Copy quotes file
cp "$(pwd)/quotes.txt" ~/.conky/quotes.txt
echo "✓ Quotes file installed to ~/.conky/quotes.txt"

# Copy conky config
cp "$(pwd)/.conkyrc" ~/.conkyrc
echo "✓ Conky configuration installed to ~/.conkyrc"

echo ""
echo "========================================="
echo "Installation Complete!"
echo "========================================="
echo ""
echo "To start the clock, run:"
echo "  conky -q"
echo ""
echo "To start automatically on login:"
echo "  1. Open 'Startup Applications' in Zorin OS"
echo "  2. Click 'Add'"
echo "  3. Name: Open Clock Fluid"
echo "  4. Command: conky -q"
echo "  5. Click 'Save'"
echo ""
echo "To customize:"
echo "  - Edit ~/.conkyrc for appearance changes"
echo "  - Edit ~/.conky/quotes.txt to add your own quotes"
echo ""
