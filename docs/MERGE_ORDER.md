# Merge Order

Use this guide when multiple PRs are open.

## Preferred order

1. Documentation foundation.
2. Workflow and prompt docs.
3. Examples and blueprints.
4. Quality checklists.
5. Godot scene or script fixes.
6. Demo improvements.
7. Release preparation.

## Current recommendation

After this PR, the next PR should be technical validation, not more documentation.

Suggested next PR:

```text
fix: validate base Godot project
```

## Rule

Avoid merging a feature PR if the project has not been opened locally after recent structural changes.
