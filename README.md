# VibeCamp Bridge

The Mac half of VibeCamp, the iPhone app. It puts the coding agents on your Mac
(Claude Code, Codex, and others) on your iPhone. You watch them work and answer them when they ask.

This repo holds the releases: the notarized DMG, the Homebrew cask, and the update feed.

## Install

With Homebrew:

```bash
brew tap tornikegomareli/vibecamp https://github.com/tornikegomareli/vibecamp
brew trust --tap tornikegomareli/vibecamp
brew install --cask vibecamp-bridge
```

Or download [**VibeCamp-Bridge.dmg**](https://github.com/tornikegomareli/vibecamp/releases/latest/download/VibeCamp-Bridge.dmg)
from the latest release. It needs macOS 15 or later.

The bridge updates itself. To check now, choose Check for Updates… in its menu bar menu.

## Uninstall

First turn off every agent under "Answer from the phone" in the bridge's menu. That removes the bridge's hooks from
the agents' settings. Then:

```bash
brew uninstall --cask vibecamp-bridge
```
