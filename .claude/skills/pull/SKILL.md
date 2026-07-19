```markdown
# pull Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill provides guidance on contributing to the `pull` TypeScript codebase. It covers established coding conventions, commit patterns, and key repository workflows, including updating CI configurations and managing dependency updates. The repository does not use a specific framework and follows a clean, modular approach with named exports and relative imports.

## Coding Conventions

### File Naming
- Use **camelCase** for filenames.
  - Example: `myModule.ts`, `userProfile.test.ts`

### Import Style
- Use **relative imports** for internal modules.
  ```typescript
  import { fetchData } from './apiClient';
  ```

### Export Style
- Use **named exports** rather than default exports.
  ```typescript
  // Good
  export function parseInput(input: string): ParsedResult { ... }

  // Bad
  export default function parseInput(input: string): ParsedResult { ... }
  ```

### Commit Patterns
- Commits are generally **freeform** but may use the `chore` prefix for maintenance tasks.
- Average commit message length: ~53 characters.
  - Example: `chore: bump actions/setup-node version in CI workflow`

## Workflows

### Update GitHub Actions Workflow
**Trigger:** When you need to update CI dependencies or workflow settings (e.g., bumping actions/setup-node version).  
**Command:** `/update-ci-workflow`

1. Edit `.github/workflows/ci.yml` to update action versions or workflow configuration.
2. Commit the changes with a descriptive message (e.g., `chore: update setup-node to v4`).
3. Optionally, merge or pull in related changes from `master`/`main`.
4. Merge the pull request or push directly to the main branch.

#### Example commit:
```
chore: bump actions/setup-node to v4 in CI workflow
```

### Merge Dependency Update Branch
**Trigger:** When a dependency update PR (e.g., from dependabot) is ready to be merged, often after updating workflow files.  
**Command:** `/merge-dependabot-update`

1. Review the dependency update PR (often includes changes to `.github/workflows/ci.yml`).
2. Merge the branch into the main branch.
3. Resolve any conflicts if necessary.

#### Example PR title:
```
chore(deps): update actions/setup-node to v4
```

## Testing Patterns

- Test files use the pattern `*.test.*` (e.g., `userProfile.test.ts`).
- The testing framework is **unknown** from repository analysis, but tests are colocated with source files or in a dedicated test directory.
- Example test file name: `apiClient.test.ts`

## Commands

| Command                 | Purpose                                                        |
|-------------------------|----------------------------------------------------------------|
| /update-ci-workflow     | Update GitHub Actions CI workflow configuration                |
| /merge-dependabot-update| Merge a dependency update branch (e.g., from dependabot)       |
```