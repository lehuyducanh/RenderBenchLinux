#!/bin/bash

set -e

echo "🧩 Updating system..."
sudo apt update && sudo apt upgrade -y

echo "🧩 Installing dependencies..."
sudo apt install -y build-essential dkms unzip wget

echo "⚙️ Installing NVIDIA driver..."
sudo ubuntu-drivers autoinstall

WORKDIR="$HOME/octanebench_test"
mkdir -p "$WORKDIR"
cd "$WORKDIR"

echo "📦 Downloading OctaneBench..."
wget https://render.otoy.com/downloads/benchmark/bench-linux.zip -O bench-linux.zip

echo "📂 Unzipping..."
unzip bench-linux.zip
cd OctaneBench_*/

echo "🔧 Making octane executable..."
chmod +x octane

echo "✅ All done. Reboot now to complete driver installation."
read -p "Do you want to reboot now? (y/n): " choice
if [[ "$choice" == "y" ]]; then
    sudo reboot
fi
