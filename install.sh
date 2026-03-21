#!/bin/sh
set -e

REPO="chronoboost/homebrew-sb-cli"
BINARY="sb"

# Detect OS
OS=$(uname -s | tr '[:upper:]' '[:lower:]')
case "$OS" in
  darwin) ;;
  linux)  ;;
  *)      echo "Error: Unsupported OS: $OS" >&2; exit 1 ;;
esac

# Detect architecture
ARCH=$(uname -m)
case "$ARCH" in
  x86_64|amd64)   ARCH="amd64" ;;
  arm64|aarch64)   ARCH="arm64" ;;
  *)               echo "Error: Unsupported architecture: $ARCH" >&2; exit 1 ;;
esac

# Get version (use $VERSION env var or fetch latest)
if [ -z "$VERSION" ]; then
  VERSION=$(curl -fsSL "https://api.github.com/repos/${REPO}/releases/latest" | grep '"tag_name"' | sed 's/.*"v\(.*\)".*/\1/')
fi

if [ -z "$VERSION" ]; then
  echo "Error: Could not determine latest version" >&2
  exit 1
fi

TARBALL="sb_${OS}_${ARCH}.tar.gz"
URL="https://github.com/${REPO}/releases/download/v${VERSION}/${TARBALL}"

echo "Installing sb v${VERSION} (${OS}/${ARCH})..."

# Download and extract
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

curl -fsSL "$URL" -o "${TMPDIR}/${TARBALL}"
tar xzf "${TMPDIR}/${TARBALL}" -C "${TMPDIR}"
chmod +x "${TMPDIR}/${BINARY}"

# Install
INSTALL_DIR="/usr/local/bin"
if [ -w "$INSTALL_DIR" ]; then
  mv "${TMPDIR}/${BINARY}" "${INSTALL_DIR}/${BINARY}"
else
  sudo mv "${TMPDIR}/${BINARY}" "${INSTALL_DIR}/${BINARY}"
fi

echo "sb v${VERSION} installed successfully"
sb version
