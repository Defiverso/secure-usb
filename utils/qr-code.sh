#!/usr/bin/env bash
set -e

echo "=== 🔐 QR Code Generator ==="
echo

# Verifica se qrencode está instalado
if ! command -v qrencode &>/dev/null; then
  echo "❌ 'qrencode' not found. Installing..."

  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt install -y qrencode
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install qrencode
  elif [[ "$OSTYPE" == "msys"* ]]; then
    pacman -S --noconfirm mingw-w64-x86_64-qrencode
  else
    echo "Unsupported OS. Please install qrencode manually."
    exit 1
  fi
fi

# Entrada interativa
echo
read -rp "📦 Enter the text or link to encode: " CONTENT
if [ -z "$CONTENT" ]; then
  echo "⚠️  No content provided. Exiting."
  exit 1
fi

read -rp "💾 Enter output file name (default: qrcode.png): " OUTPUT
OUTPUT="${OUTPUT:-qrcode.png}"

# Gera o QR Code
qrencode -o "$OUTPUT" "$CONTENT"

# Mostra informações e preview opcional
echo
echo "✅ QR Code saved to: $OUTPUT"
echo "📄 Full path: $(realpath "$OUTPUT" 2>/dev/null || echo "$PWD/$OUTPUT")"

# Pergunta se quer visualizar no terminal (apenas se suportado)
echo
read -rp "👀 Show QR code in terminal (y/N)? " SHOW
if [[ "$SHOW" =~ ^[Yy]$ ]]; then
  echo
  qrencode -t ANSIUTF8 "$CONTENT"
  echo
fi

echo "✅ Done."
