# Agent Workflow

This guide explains how code agents should work with this Godot template.

## Reading order

Before changing files, read:

1. `AGENTS.md`
2. `README.md`
3. `docs/CONTEXT.md`
4. `docs/TASKS.md`
5. `docs/DECISIONS.md`
6. `docs/CHANGELOG.md`

## Work style

- Work in small iterations.
- Keep the demo scene runnable.
- Change one system at a time.
- Prefer readable GDScript over clever abstractions.
- Do not add large external assets without updating credits.
- Do not rewrite the whole project unless the task explicitly asks for it.

## Required report after each task

Use this structure:

```md
## Changed

- ...

## How to test

- ...

## Documentation updated

- `docs/CHANGELOG.md`
- `docs/DECISIONS.md` if needed
- `docs/CREDITS.md` if assets were added

## Risks

- ...
```

## Godot safety rules

- Do not rename scene paths without updating references.
- Do not break `project.godot` autoloads.
- Do not edit generated `.godot/` files.
- Do not commit export credentials.
- Do not add binary assets unless they are intentional and licensed.
