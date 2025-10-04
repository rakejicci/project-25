import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'fs';
import { dirname } from 'path';

// Read the backup file
const backupPath = process.argv[2] || 'toolsrt-backup.json';

if (!existsSync(backupPath)) {
  console.error(`❌ Backup file not found: ${backupPath}`);
  console.log('\nUsage: node restore-from-backup.js [backup-file.json]');
  process.exit(1);
}

const backup = JSON.parse(readFileSync(backupPath, 'utf8'));

console.log(`📦 Restoring: ${backup.project_name}`);
console.log(`📝 Description: ${backup.description}`);
console.log(`📅 Created: ${backup.created_at}`);
console.log(`📁 Files: ${Object.keys(backup.files).length}\n`);

// Restore each file
Object.entries(backup.files).forEach(([filePath, content]) => {
  // Create directory if needed
  const dir = dirname(filePath);
  if (dir !== '.' && !existsSync(dir)) {
    mkdirSync(dir, { recursive: true });
  }

  writeFileSync(filePath, content, 'utf8');
  console.log(`✓ Restored ${filePath}`);
});

console.log('\n✅ Project restored successfully!');
console.log('\nNext steps:');
console.log('1. npm install');
console.log('2. npm run dev');
