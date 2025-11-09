#!/bin/bash

echo "👀 Watching for changes in src/ ..."
echo "Press Ctrl+C to stop"
echo ""

# Initial build
./dev.sh

# Watch for changes (macOS fswatch)
if command -v fswatch &> /dev/null; then
    fswatch -o src/ public/ | while read -r; do
        echo ""
        echo "🔄 Changes detected, rebuilding..."
        ./dev.sh
    done
else
    echo "⚠️  fswatch not found. Install it with: brew install fswatch"
    echo ""
    echo "Alternative: Manually run './dev.sh' after making changes"
fi
