# TaskFlow Demo Repository

This is the demo repository for ShipRelay's interactive changelog generator.

**TaskFlow** is a fictional SaaS task management application used to demonstrate ShipRelay's AI-powered changelog generation capabilities.

## Repository Information

- **Repository:** masoodgandhi/demo-app
- **Purpose:** Public demo for ShipRelay (shiprelay.io/demo)
- **Application:** TaskFlow - Team Task Management Platform
- **Visibility:** Public (required for unauthenticated demo access)

## Release History

This repository contains 9 releases spanning 6 months of development:

- **v0.1.0** (Oct 2025) - Initial release with authentication and basic task management
- **v0.2.0** (Oct 2025) - Due dates, priorities, and filtering
- **v0.3.0** (Nov 2025) - Comments, notifications, and search
- **v0.4.0** (Nov 2025) - Recurring tasks, assignments, and dashboard
- **v0.5.0** (Dec 2025) - Mobile responsive, attachments, keyboard shortcuts
- **v0.6.0** (Dec 2025) - Templates, dependencies, bulk operations
- **v1.0.0** (Jan 2026) - Team workspaces, calendar view, real-time collaboration
- **v1.1.0** (Feb 2026) - Custom fields, advanced filtering, time tracking
- **v1.2.0** (Mar 2026) - Gantt charts, automation, export functionality

Each release includes:
- **2+ New Features** - New capabilities added to TaskFlow
- **2+ Bug Fixes** - Issues resolved for users
- **1+ Improvements** - Performance, UX, or infrastructure enhancements

## Commit Message Format

All commits follow this format (DEMO-03):

```
type: what changed — why it matters to users
```

**Examples:**
- `feat: Add due date picker to task creation form — enables deadline tracking for time-sensitive work`
- `fix: Prevent duplicate task creation on double-click submit — eliminates confusion from accidental duplicates`
- `chore: Improve task list loading performance with database indexing — reduces page load time by 60 percent`

**Rules:**
- Minimum 10 words per commit message
- Clear description of what changed
- User-focused explanation of why it matters
- No terse messages like "fix bug" or "update deps"

## Setup Instructions

This repository was populated using the `setup-demo-repo.ts` script from the ShipRelay repository.

### Initial Setup (Already Complete)

```bash
# 1. Create the repository on GitHub
# Repository: masoodgandhi/demo-app (public)

# 2. Clone and initialize
git clone git@github.com:masoodgandhi/demo-app.git
cd demo-app
git init
git remote add origin git@github.com:masoodgandhi/demo-app.git

# 3. Run the setup script
tsx /path/to/shiprelay/scripts/setup-demo-repo.ts

# The script will:
# - Validate the repository location
# - Create 9 releases with realistic commits
# - Tag each release (v0.1.0 through v1.2.0)
# - Push commits and tags to GitHub
```

## Maintenance

### Weekly Automated Commits (DEMO-05)

A GitHub Actions cron workflow runs weekly to add new commits, keeping the demo active.

**Note:** This is a P1 (nice-to-have) feature and may be implemented in a future session.

### Monthly Version Tags (DEMO-06)

Post-launch, new version tags are created monthly by the Demo Curator persona to keep the demo feeling like an active product.

## Usage in ShipRelay

This repository is used by:

1. **Demo Page** (PAGE-11, DEMO-07) - Visitors can paste any public GitHub repo URL or use this as the fallback
2. **Rate Limiting** (RATE-01) - 3 unauthenticated generations per IP per hour
3. **Quality Review** (DEMO-08) - Demo Curator reviews output before launch (Week 15)

## Validation

The demo data structure is validated by unit tests in the ShipRelay repository:

```bash
cd /path/to/shiprelay
npm test -- __tests__/unit/scripts/demo-commits.test.ts
```

Tests verify:
- 8-10 releases spanning 6 months (DEMO-02)
- Commit message format and length (DEMO-03)
- Category distribution per release (DEMO-04)
- Chronological ordering
- No duplicate messages
- TaskFlow-themed content

## License

This is a demo repository. The code is fictional and for demonstration purposes only.

---

**Powered by ShipRelay** - AI-powered release notes for your users

[![ShipRelay](https://shiprelay.io/api/badge/getshiprelay-demo-app)](https://shiprelay.io/getshiprelay-demo-app)