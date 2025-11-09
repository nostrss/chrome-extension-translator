#!/bin/bash

set -e

echo "🧹 Cleaning build directory..."
rm -rf build
mkdir -p build

echo "🔨 Compiling Elm (optimized)..."
elm make src/Main.elm --output=build/index.js --optimize

echo "📦 Copying public files..."
cp -r public/* build/

echo "✅ Build complete! The 'build/' folder is ready to load in Chrome."
echo ""
echo "To install:"
echo "1. Open chrome://extensions/"
echo "2. Enable 'Developer mode'"
echo "3. Click 'Load unpacked'"
echo "4. Select the 'build/' folder"
