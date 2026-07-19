---
name: update-github-actions-workflow
description: Workflow command scaffold for update-github-actions-workflow in pull.
allowed_tools: ["Bash", "Read", "Write", "Grep", "Glob"]
---

# /update-github-actions-workflow

Use this workflow when working on **update-github-actions-workflow** in `pull`.

## Goal

Updates the GitHub Actions CI workflow configuration, typically for dependency or configuration changes.

## Common Files

- `.github/workflows/ci.yml`

## Suggested Sequence

1. Understand the current state and failure mode before editing.
2. Make the smallest coherent change that satisfies the workflow goal.
3. Run the most relevant verification for touched files.
4. Summarize what changed and what still needs review.

## Typical Commit Signals

- Edit .github/workflows/ci.yml to update action versions or workflow configuration.
- Commit the changes with a message referencing the update (e.g., bumping a dependency).
- Optionally, merge or pull in related changes from master/main.
- Merge the pull request or push to main branch.

## Notes

- Treat this as a scaffold, not a hard-coded script.
- Update the command if the workflow evolves materially.