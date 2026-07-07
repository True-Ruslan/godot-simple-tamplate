# CI Plan

CI is not required for the first template draft, but it should be added later.

## Goals

- Validate repository structure.
- Detect missing key files.
- Optionally run Godot in headless mode.
- Avoid broken template releases.

## Phase 1 - Lightweight checks

Check that these files exist:

- `project.godot`
- `README.md`
- `AGENTS.md`
- `docs/DOCUMENTATION_INDEX.md`
- `game/scenes/Main.tscn`

## Phase 2 - Documentation checks

- Check Markdown links.
- Check required docs exist.
- Check release notes exist before tags.

## Phase 3 - Godot checks

- Run Godot headless import.
- Validate project opens without fatal errors.
- Export smoke test later.

## Notes

Do not add CI until the local Godot project is validated.
