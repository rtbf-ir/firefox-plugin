#!/usr/bin/env sh
set -eu

VERSION=$(node -p "require('./manifest.json').version")
mkdir -p dist
rm -f "dist/rtbf-firefox-${VERSION}.zip"
zip -r "dist/rtbf-firefox-${VERSION}.zip" . \
  --exclude ".git/*" --exclude "dist/*" --exclude "test/*" --exclude ".DS_Store" --exclude "*/.DS_Store" --exclude "release.sh"
echo "Created dist/rtbf-firefox-${VERSION}.zip"
