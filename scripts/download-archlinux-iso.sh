#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../"

# URLs for download
url="https://mir.archlinux.fr/iso/latest/$(curl -s https://mir.archlinux.fr/iso/latest/ | grep -io '<a href=['"'"'"]archlinux[^"'"'"']*['"'"'"]' | head -n 1 | cut -d'"' -f2)"

# Download SHASUM
wget -q --show-progress "$url" -O "./archlinux-x86_64.iso"
