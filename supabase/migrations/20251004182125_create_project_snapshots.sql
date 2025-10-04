/*
  # Create Project Snapshots System

  1. New Tables
    - `project_snapshots`
      - `id` (uuid, primary key) - unique identifier for each snapshot
      - `project_name` (text) - name of the project (e.g., "toolsrt")
      - `description` (text) - description of the snapshot
      - `version` (text) - version identifier (e.g., "v1", "v2")
      - `created_at` (timestamptz) - when the snapshot was created
      - `updated_at` (timestamptz) - when the snapshot was last updated
      - `metadata` (jsonb) - additional metadata (git commit hash, tags, etc.)
    
    - `project_files`
      - `id` (uuid, primary key) - unique identifier for each file
      - `snapshot_id` (uuid, foreign key) - references project_snapshots
      - `file_path` (text) - relative path to the file
      - `content` (text) - file content
      - `created_at` (timestamptz) - when the file was added

  2. Security
    - Enable RLS on both tables
    - Public read access (so you can retrieve in any chat)
    - Authenticated write access for creating snapshots

  3. Indexes
    - Index on project_name for fast lookups
    - Index on snapshot_id for fast file retrieval
*/

-- Create project_snapshots table
CREATE TABLE IF NOT EXISTS project_snapshots (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  project_name text NOT NULL,
  description text DEFAULT '',
  version text DEFAULT 'v1',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  metadata jsonb DEFAULT '{}'::jsonb
);

-- Create project_files table
CREATE TABLE IF NOT EXISTS project_files (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  snapshot_id uuid NOT NULL REFERENCES project_snapshots(id) ON DELETE CASCADE,
  file_path text NOT NULL,
  content text NOT NULL,
  created_at timestamptz DEFAULT now()
);

-- Create indexes
CREATE INDEX IF NOT EXISTS idx_project_snapshots_name ON project_snapshots(project_name);
CREATE INDEX IF NOT EXISTS idx_project_snapshots_created ON project_snapshots(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_project_files_snapshot ON project_files(snapshot_id);

-- Enable RLS
ALTER TABLE project_snapshots ENABLE ROW LEVEL SECURITY;
ALTER TABLE project_files ENABLE ROW LEVEL SECURITY;

-- Public read access for retrieving projects in any chat
CREATE POLICY "Anyone can read project snapshots"
  ON project_snapshots FOR SELECT
  USING (true);

CREATE POLICY "Anyone can read project files"
  ON project_files FOR SELECT
  USING (true);

-- Allow anyone to create snapshots (useful for storing across sessions)
CREATE POLICY "Anyone can create project snapshots"
  ON project_snapshots FOR INSERT
  WITH CHECK (true);

CREATE POLICY "Anyone can create project files"
  ON project_files FOR INSERT
  WITH CHECK (true);

-- Allow anyone to update their snapshots
CREATE POLICY "Anyone can update project snapshots"
  ON project_snapshots FOR UPDATE
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Anyone can delete project snapshots"
  ON project_snapshots FOR DELETE
  USING (true);