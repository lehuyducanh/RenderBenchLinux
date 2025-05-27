#!/bin/bash

set -e

echo "🧩 Step 1: Updating system..."
sudo apt update && sudo apt upgrade -y

echo "🧩 Step 2: Installing required packages..."
sudo apt install -y unzip wget

# Bỏ qua bước cài driver vì WSL dùng driver từ Windows

# Tạo thư mục làm việc
WORKDIR="$HOME/octanebench_test"
mkdir -p "$WORKDIR"
cd "$WORKDIR"

echo "📦 Step 3: Downloading OctaneBench..."
wget https://render.otoy.com/downloads/benchmark/bench-linux.zip -O bench-linux.zip

echo "📂 Step 4: Unzipping..."
unzip -o bench-linux.zip

echo "🔧 Step 5: Making 'bench' executable..."
chmod +x bench

echo "🚀 Step 6: Running OctaneBench..."
./bench

# Tìm và in tên file kết quả
echo "📊 Step 7: Checking for result file..."
RESULT_FILE=$(ls -t bench_results_*.json | head -n 1)

if [[ -f "$RESULT_FILE" ]]; then
    echo "✅ Benchmark complete. Result file saved at:"
    echo "$WORKDIR/$RESULT_FILE"
else
    echo "❌ Benchmark finished but result file not found!"
fi
