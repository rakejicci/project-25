# ToolsRT Project - Restoration Guide

## ⚠️ Important Discovery

**Bolt Database Limitation**: Each Bolt chat has its own separate Supabase database instance. Database snapshots don't persist across different chat sessions.

## ✅ Working Solution: JSON Backup

**Backup File**: `toolsrt-backup.json` (301 KB)

This file contains:
- All 9 project files (HTML, config files)
- Project metadata
- Ready to restore instantly

## How to Restore in a New Chat

**Method 1: Upload & Restore (Recommended)**
1. Download `toolsrt-backup.json` from this chat
2. In a new chat, upload the file
3. Say: **"Restore from toolsrt-backup.json"**

Claude will automatically recreate all files.

**Method 2: Manual Restoration**
1. Upload `toolsrt-backup.json`
2. Run: `node restore-from-backup.js toolsrt-backup.json`
3. Run: `npm install`

## Files Included (9 total)

1. **index.html** (148 KB) - Main comparison tool
2. **firm-alpha-futures.html** (30 KB)
3. **firm-lucid.html** (31 KB)
4. **firm-myfundedfutures.html** (30 KB)
5. **firm-takeprofittrader.html** (27 KB)
6. **firm-tradeify.html** (31 KB)
7. **package.json** - Dependencies
8. **.gitignore** - Git ignore rules
9. **.gitattributes** - Git attributes

## Alternative: GitHub (Best for Long-Term)

For persistent, editable access across all chats:

1. Create GitHub repo: https://github.com/new
2. Push this code:
```bash
git remote add origin https://github.com/YOUR-USERNAME/toolsrt.git
git branch -M main
git push -u origin main
```

3. In future chats, say: **"Clone github.com/YOUR-USERNAME/toolsrt"**

### Benefits of GitHub:
- ✅ Edit from any device/IDE
- ✅ Version history
- ✅ Works across all AI chats
- ✅ Can be private or public
- ✅ No file size limits

## Quick Reference

| Method | Speed | Persistence | Easy Editing |
|--------|-------|-------------|--------------|
| JSON Backup | ⚡ Fast | ❌ Manual download required | ❌ No |
| GitHub Repo | 🚀 Instant | ✅ Forever | ✅ Yes |
| Bolt Database | ⚡ Fast | ❌ Chat-specific only | ❌ No |

**Recommendation**: Use GitHub for long-term storage and easy editing.
