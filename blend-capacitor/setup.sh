#!/usr/bin/env bash
set -e
echo "Installing Xcode CLT (safe to skip if already installed)..."
xcode-select --install || true
echo "Installing npm deps..."
npm install
echo "Adding iOS platform (no-op if exists)..."
npx cap add ios || true
echo "Syncing web assets..."
npx cap sync
echo "Opening Xcode..."
npx cap open ios
