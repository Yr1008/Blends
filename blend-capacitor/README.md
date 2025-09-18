# Blend (Capacitor iOS shell)

This folder is pre-wired for **Path A (Capacitor)** using your username/bundle id:

- Bundle ID: `com.github.yr1008.blends`
- Web assets dir: `www/` (already includes your `index.html`)

## 1) Install tools (first time on this Mac)
```bash
xcode-select --install || true
# If Node is missing: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# then: brew install node
```

## 2) Install dependencies
```bash
npm install
```

## 3) Add iOS platform + sync web
```bash
npx cap add ios
npx cap sync
npx cap open ios
```

## 4) In Xcode
- Select a Team under **Signing & Capabilities**
- Add AppIcon (1024×1024 source) and a simple Launch Screen
- Run on a real iPhone

## Re-sync after changes
If you edit files in `www/`, run:
```bash
npx cap sync ios
```

## Notes
- Before App Store submit, consider changing the bundle id to a domain you control (e.g., `com.yourdomain.blend`).
- To add native touches (recommended): `npm i @capacitor/haptics @capacitor/share @capacitor/browser @capacitor/preferences` (already included in package.json).
