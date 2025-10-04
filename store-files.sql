-- This file contains SQL to store all project files
-- Run each INSERT statement via the Supabase SQL editor or MCP tool

-- Update snapshot metadata
UPDATE project_snapshots
SET metadata = '{"saved_from": "claude-code", "git_commit": "05cafcc", "total_files": 9}'::jsonb
WHERE id = '0aa195ef-9842-442c-8821-8310fe5a2166';

-- Files already inserted: package.json, .gitignore, .gitattributes
-- Remaining files need to be inserted manually via separate INSERT statements
-- due to size limitations

-- To complete the snapshot, you'll need to insert:
-- 1. index.html (148KB)
-- 2. firm-alpha-futures.html (30KB)
-- 3. firm-lucid.html (31KB)
-- 4. firm-myfundedfutures.html (30KB)
-- 5. firm-takeprofittrader.html (27KB)
-- 6. firm-tradeify.html (31KB)
