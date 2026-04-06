#!/usr/bin/env bash
# DEMO-05: Weekly automated commit script for TaskFlow demo repo.
#
# Called by the GitHub Actions weekly-commit workflow.
# Picks a random commit message from the library, creates a small
# file change in src/updates/, and commits it.
#
# Copy this file to scripts/weekly-commit.sh in the demo repo.

set -euo pipefail

# ─── Commit message library ──────────────────────────────────────────
# Each message follows the DEMO CURATOR format:
#   feat/fix/chore: [what changed] — [why it matters to users]
# Minimum 10 words per message. Covers features, fixes, and improvements.

COMMITS=(
  "feat: add keyboard shortcuts for common task actions — power users can now manage tasks without touching the mouse"
  "feat: introduce task templates for recurring workflows — teams can create tasks from pre-built templates in one click"
  "feat: add bulk task assignment to team members — managers can now assign multiple tasks to a person at once"
  "feat: implement dark mode toggle in user preferences — users who prefer dark interfaces can now switch themes"
  "feat: add task dependency visualization on the board view — teams can see which tasks block other tasks visually"
  "feat: introduce smart due date suggestions based on task complexity — the system now recommends realistic deadlines"
  "feat: add CSV export for completed tasks and time tracking data — teams can generate reports for stakeholders"
  "feat: implement real-time collaborative editing on task descriptions — multiple team members can edit simultaneously"
  "fix: resolve issue where task notifications were sent twice on status change — users no longer receive duplicate alerts"
  "fix: correct timezone handling in due date reminders — users in non-UTC timezones now get reminders at the right time"
  "fix: prevent task list from jumping to top when marking items complete — scroll position is now preserved during updates"
  "fix: resolve search index lag when creating new tasks — newly created tasks now appear in search results immediately"
  "fix: correct attachment preview rendering for large image files — thumbnails now load properly regardless of file size"
  "fix: address memory leak in real-time subscription handler — long-running browser sessions no longer slow down over time"
  "chore: improve task loading performance with optimistic UI updates — task actions now feel instant instead of waiting for server"
  "chore: optimize database queries for the activity feed — dashboard loading time reduced by forty percent on large workspaces"
  "chore: refine mobile touch targets for task checkboxes — completing tasks on phone is now easier with larger tap areas"
  "chore: update onboarding flow with interactive walkthrough steps — new users now complete setup in under two minutes"
  "chore: streamline the project settings page layout for clarity — finding and changing project settings is now more intuitive"
  "chore: improve error messages when file uploads exceed size limits — users now see exactly what the limit is and how to fix it"
)

# ─── Pick a random commit ────────────────────────────────────────────

RANDOM_INDEX=$((RANDOM % ${#COMMITS[@]}))
COMMIT_MSG="${COMMITS[$RANDOM_INDEX]}"

# ─── Create a small file change ─────────────────────────────────────

mkdir -p src/updates
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
WEEK_NUM=$(date -u +"%Y-W%V")
FILENAME="src/updates/${WEEK_NUM}.md"

cat > "$FILENAME" << EOF
# TaskFlow Update — ${WEEK_NUM}

**Committed:** ${TIMESTAMP}
**Summary:** ${COMMIT_MSG}

---
_Automated weekly update from TaskFlow development._
EOF

# ─── Commit ──────────────────────────────────────────────────────────

git add "$FILENAME"
git commit -m "$COMMIT_MSG"

echo "✓ Committed: $COMMIT_MSG"
