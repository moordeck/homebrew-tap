# Moordeck Homebrew Tap

Official Homebrew Cask repository for **Moordeck** ([moordeck.com](https://moordeck.com)) — a local-first anti-detect fingerprint browser and standard Playwright/CDP Local API engine for macOS Apple Silicon.

## Install

```bash
brew install --cask moordeck/tap/moordeck
```

## Upgrade

```bash
brew upgrade --cask moordeck
```

## Uninstall

```bash
brew uninstall --cask moordeck
```

## Quickstart After Install

```bash
open -a Moordeck
mdk updates check && mdk kernels update
mdk browser start --serial 1 --cdp --headless false
```

## Related Links

- **Download & SHA-256 Checksums**: <https://moordeck.com/download>
- **Local API & CLI Docs**: <https://moordeck.com/docs> · [moordeck/docs](https://github.com/moordeck/docs)
- **GitHub Releases & Issue Tracker**: [moordeck/releases](https://github.com/moordeck/releases)
- **Free Online Diagnostics**: [/check](https://moordeck.com/check) · [/ip](https://moordeck.com/ip) · [/ai-check](https://moordeck.com/ai-check)
