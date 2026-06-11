#!/bin/bash
# Deploy portfolio to arianansari.de
set -e

export PATH="$HOME/.local/bin:$PATH"

git add -A
git commit -m "${1:-Update}" || true
git push origin main

npx vercel --prod --yes --scope arianansari05-3882s-projects
