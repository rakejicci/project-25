# ToolsRT Project Snapshot

## Snapshot Details
- **Project Name**: toolsrt
- **Snapshot ID**: `0aa195ef-9842-442c-8821-8310fe5a2166`
- **Description**: ToolsRT.com - Prop Trading Firm Comparison Tool
- **Created**: October 2025
- **Git Commit**: 05cafcc

## How to Restore in a New Chat

Simply say one of these commands to Claude:

1. **"Restore my ToolsRT project from the database"**
2. **"Load project: toolsrt"**
3. **"Get my toolsrt snapshot from Supabase"**

Claude will:
- Query the `project_snapshots` table for your project
- Retrieve all files from the `project_files` table
- Recreate the entire directory structure
- You'll be ready to edit immediately

## Database Schema

### project_snapshots
- Stores project metadata
- Public read access (retrieve from any chat)
- Contains: project_name, description, version, metadata

### project_files
- Stores individual file contents
- Linked to snapshots via `snapshot_id`
- Contains: file_path, content

## Current Snapshot Status

✅ Database tables created
✅ Snapshot record created (ID: 0aa195ef-9842-442c-8821-8310fe5a2166)
✅ Small files stored: package.json, .gitignore, .gitattributes
⚠️  Large HTML files pending (can be added later or retrieved from git)

## Files in This Snapshot

1. index.html (148KB) - Main comparison tool
2. firm-alpha-futures.html (30KB) - Alpha Futures review
3. firm-lucid.html (31KB) - Lucid review
4. firm-myfundedfutures.html (30KB) - My Funded Futures review
5. firm-takeprofittrader.html (27KB) - TakeProfitTrader review
6. firm-tradeify.html (31KB) - Tradeify review
7. package.json - Project dependencies
8. .gitignore - Git ignore rules
9. .gitattributes - Git attributes

## Alternative: Git Repository

This project is also version controlled with git. You can:
1. Push to GitHub for easy editing
2. Share the repo URL with Claude in future chats
3. Edit files via GitHub web editor, VS Code, or any IDE
