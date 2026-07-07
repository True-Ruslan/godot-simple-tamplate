# Handoff

This document helps a human or AI agent continue the work.

## Current goal

Turn the repository into a clean Godot template for short atmospheric horror games.

## What is already done

- Base project and documentation exist.
- Agent workflow exists.
- Asset and license guidance exists.
- Horror blueprints exist.
- Example playable slice docs exist.
- Quality and playtest checklists exist.
- Draft release notes exist.

## Next best action

Open the project locally in Godot and validate the actual scene/script setup.

## Suggested prompt for next agent

```text
Read AGENTS.md, docs/DOCUMENTATION_INDEX.md, docs/GODOT_PROJECT_AUDIT.md and docs/PLAYTEST_CHECKLIST.md. Inspect the Godot project structure and identify the smallest fixes needed to make the main scene run cleanly. Do not refactor unrelated systems.
```

## Expected next PR

```text
fix: validate base Godot project
```

## Do not do next

- Do not add enemy AI.
- Do not add multiplayer.
- Do not add a full map.
- Do not add large external assets.
- Do not rewrite the whole template.
