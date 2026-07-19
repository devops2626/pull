#!/bin/sh
# Bump dependencies for your ecosystem
# Example for npm:
if [ -f package.json ]; then
  npx npm-check-updates -u && npm install
fi

# Example for pip (using pip-tools):
# if [ -f requirements.in ]; then
#   pip-compile --upgrade requirements.in
# fi

# Commit the changes
git add .
git commit -m "chore(deps): bump dependencies" || echo "No changes to commit"
