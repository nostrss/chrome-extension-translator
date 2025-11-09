#!/bin/bash

set -e

echo "🧹 Cleaning build directory..."
rm -rf build
mkdir -p build

echo "🔨 Compiling Elm (debug mode)..."
elm make src/Main.elm --output=build/index.js --debug

echo "📦 Copying public files..."
cp -r public/* build/

echo "✅ Development build complete!"
echo ""
echo "To install:"
echo "1. Open chrome://extensions/"
echo "2. Enable 'Developer mode'"
echo "3. Click 'Load unpacked'"
echo "4. Select the 'build/' folder"
