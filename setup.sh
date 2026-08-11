#!/usr/bin/env bash
# Otium AI OS Kit — Node.js check (macOS / Linux).
#
# The plugins and the optional Obsidian connector need Node.js and npx.
# This script checks whether they are there and, if not, tells you exactly
# what to do. It deliberately does NOT install a version manager.
#
# Why: the Claude desktop app is launched from your dock, not from a terminal,
# so it never reads ~/.zshrc or ~/.bashrc. Node installed through nvm exists
# only inside terminal sessions, which produces the worst possible failure:
# `node -v` works when you check, and the app still cannot find it.
# The installer from nodejs.org puts Node somewhere both can see.
#
# Run it yourself with:  bash setup.sh
# Safe to run as many times as you like. It changes nothing.

say() { printf '%s\n' "$*"; }

NODE_OK=0
NPX_OK=0
command -v node >/dev/null 2>&1 && NODE_OK=1
command -v npx  >/dev/null 2>&1 && NPX_OK=1

if [ "$NODE_OK" -eq 1 ] && [ "$NPX_OK" -eq 1 ]; then
  say "OK: Node.js $(node -v) and npx are both available. Nothing to do."
  say ""
  say "One caveat this script cannot test for you: if you installed Node with nvm,"
  say "asdf, or another version manager, the Claude desktop app may still not see it."
  say "If a later step fails with 'npx: command not found', that is the cause."
  say "The fix is to install Node from https://nodejs.org instead."
  exit 0
fi

say "Node.js was not found on this machine."
say ""
say "Install it this way, it takes about two minutes:"
say ""
say "  1. Go to  https://nodejs.org"
say "  2. Click the green LTS button"
say "  3. Open the downloaded file and click through Next, Next, Finish"
say "  4. Quit Claude Code completely and reopen it"
say ""
say "Then say 'check node' in the chat and your AI will confirm it worked."
say ""
say "Prefer a package manager? Homebrew works too:  brew install node"
say "Avoid nvm for this setup. See the note at the top of this file for why."
exit 1
