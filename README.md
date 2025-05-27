# 🖥️ RenderBenchAutomate

This repository automates the installation and execution of **OctaneBench** for benchmarking NVIDIA GPUs on:

- 🐧 Native Ubuntu Linux (`render-linux-install.sh`)
- 🪟 Windows Subsystem for Linux (WSL) (`render-wsl-install.sh`)

---

## 📦 What is OctaneBench?

[OctaneBench](https://render.otoy.com/octanebench/) is a benchmarking tool developed by OTOY to test the rendering performance of your NVIDIA GPU using the OctaneRender engine.

---

## 🚀 Scripts

### 1. `render-linux-install.sh`

> ✅ For **native Ubuntu/Linux systems** with full NVIDIA GPU driver installation support.

**What it does:**

- Updates system packages
- Installs build tools, DKMS, NVIDIA driver
- Downloads and runs OctaneBench
- Shows result JSON file

### 2. `render-wsl-install.sh`

> 🧩 For **WSL environments** with NVIDIA passthrough (requires WSL2 + GPU support)

**What it does:**

- Skips NVIDIA driver installation (handled by Windows)
- Downloads and runs OctaneBench in WSL
- Reports result location

---

## 🛠️ Usage

### 🔧 Native Linux:

```bash
wget https://raw.githubusercontent.com/lehuyducanh/RenderBenchAutomate/main/render-linux-install.sh
chmod +x render-linux-install.sh
./render-linux-install.sh
