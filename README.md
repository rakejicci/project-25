# ToolsRT - Prop Trading Firm Comparison Tool

A comprehensive comparison tool for proprietary trading firms, helping traders find the best funded trading programs.

## Features

- Compare multiple prop trading firms side-by-side
- Detailed firm reviews (TakeProfitTrader, Tradeify, Lucid, Alpha Futures, My Funded Futures)
- Interactive comparison tool
- Responsive design
- Fast, lightweight (Vite-powered)

## Quick Start

```bash
npm install
npm run dev
```

## Deployment

```bash
npm run build
```

## GitHub Setup (For Easy Editing Across Chats)

1. Create a new repo: https://github.com/new
2. Add remote and push:
```bash
git remote add origin https://github.com/YOUR-USERNAME/toolsrt.git
git branch -M main
git push -u origin main
```

3. In any future Bolt chat, say: **"Clone github.com/YOUR-USERNAME/toolsrt"**

## Restoring This Project

### From Backup File
1. Download `toolsrt-backup.json`
2. Upload to new chat
3. Say: "Restore from toolsrt-backup.json"

### From GitHub (Recommended)
Just say: "Clone github.com/YOUR-USERNAME/toolsrt"

See `RESTORE_PROJECT.md` for detailed instructions.

## Tech Stack

- Vite
- Vanilla JavaScript
- HTML/CSS
- No framework dependencies

## Project Structure

```
├── index.html                        # Main comparison page
├── firm-*.html                       # Individual firm review pages
├── package.json                      # Dependencies
├── toolsrt-backup.json              # Full project backup
└── restore-from-backup.js           # Restore script
```
