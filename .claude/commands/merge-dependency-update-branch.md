---
name: merge-dependency-update-branch
description: Workflow command scaffold for merge-dependency-update-branch in pull.
allowed_tools: ["Bash", "Read", "Write", "Grep", "Glob"]
---

# /merge-dependency-update-branch

Use this workflow when working on **merge-dependency-update-branch** in `pull`.

## Goal

Merges a branch created by a dependency update bot (e.g., dependabot) into the main branch, often after updating workflow files.

## Common Files

- `.github/workflows/ci.yml`

## Suggested Sequence

1. Understand the current state and failure mode before editing.
2. Make the smallest coherent change that satisfies the workflow goal.
3. Run the most relevant verification for touched files.
4. Summarize what changed and what still needs review.

## Typical Commit Signals

- Review the dependency update PR (often includes .github/workflows/ci.yml).
- Merge the branch into the main branch.
- Resolve any conflicts if necessary.

## Notes

- Treat this as a scaffold, not a hard-coded script.
- Update the command if the workflow evolves materially.