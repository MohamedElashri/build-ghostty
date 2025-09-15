[![Build and Release Ghostty](https://github.com/MohamedElashri/build-ghostty/actions/workflows/build.yml/badge.svg?event=schedule)](https://github.com/MohamedElashri/build-ghostty/actions/workflows/build.yml)

# Ghostty Build Automation
This repository contains automation for building and releasing [Ghostty](https://github.com/ghostty-org/ghostty), a fast, feature-rich, and cross-platform terminal emulator that uses platform-native UI and GPU acceleration.

# Latest Version : [v1.1.3](https://github.com/MohamedElashri/build-ghostty/releases/tag/v1.1.3)

## Installation

### Method 1: Debian Package (Recommended for Debian/Ubuntu-based systems)
Download the appropriate .deb package for your Ubuntu version from the releases page:

- For Ubuntu 22.04:
```bash
sudo dpkg -i ghostty_<version>_ubuntu22.04_amd64.deb
sudo apt-get install -f  # Install any missing dependencies
```

- For Ubuntu 24.04:
```bash
sudo dpkg -i ghostty_<version>_ubuntu24.04_amd64.deb
sudo apt-get install -f  # Install any missing dependencies
```

After installation, you can:
- Launch Ghostty from your applications menu
- Run `ghostty` from the terminal

### Method 2: Portable Binary
If you prefer to run the portable version of Ghostty:

1. Download the appropriate version for your Ubuntu release from the releases page:
   - `ghostty-linux-x86_64-ubuntu22.04.tar.gz` for Ubuntu 22.04
   - `ghostty-linux-x86_64-ubuntu24.04.tar.gz` for Ubuntu 24.04

2. Extract the archive:
```bash
tar xzf ghostty-linux-x86_64-ubuntu*.tar.gz
```

3. Run the binary:
```bash
./ghostty
```

Note: You'll need the following dependencies installed:
```bash
sudo apt-get update
sudo apt-get install -y libgtk-4-dev libgtk4-layer-shell-dev libadwaita-1-dev gettext libxml2-utils pkg-config
```

### Version Compatibility
- Ubuntu 22.04 package: Compatible with Ubuntu 22.04 and similar distributions with equivalent GLIBC versions
- Ubuntu 24.04 package: Compatible with Ubuntu 24.04 and similar distributions with equivalent GLIBC versions

## Building Manually
If you want to build Ghostty locally:

1. Install system dependencies:
```bash
sudo apt-get update
sudo apt-get install -y libgtk-4-dev libgtk4-layer-shell-dev libadwaita-1-dev gettext libxml2-utils pkg-config git
```

2. Install Zig:
```bash
wget https://ziglang.org/download/0.13.0/zig-linux-x86_64-0.13.0.tar.xz
tar xvf zig-linux-x86_64-0.13.0.tar.xz
```

3. Clone and build:
```bash
git clone https://github.com/ghostty-org/ghostty.git
cd ghostty
../zig-linux-x86_64-0.13.0/zig build -Doptimize=ReleaseFast
```

4. Run:
```bash
./zig-out/bin/ghostty
```

## Automated Builds
This repository automatically:
- Checks for new Ghostty releases every 6 hours
- Builds packages for `Ubuntu 22.04` and `Ubuntu 24.04`
- Creates GitHub releases with version-specific packages
- Generates both .deb packages and portable binaries

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
