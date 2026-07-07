# Agent Next Prompt

Use this prompt for the next technical pass.

```text
You are working in a Godot 4 atmospheric horror template repository.

Read first:

- AGENTS.md
- docs/DOCUMENTATION_INDEX.md
- docs/GODOT_PROJECT_AUDIT.md
- docs/PLAYTEST_CHECKLIST.md
- docs/LOCAL_VALIDATION_GUIDE.md

Task:

Inspect the Godot project structure and identify the smallest changes required to make the template ready for v0.1.0 local validation.

Rules:

- Do not rewrite the whole project.
- Do not add external assets.
- Do not add enemy AI.
- Do not change folder structure unless required.
- Keep game/scenes/Main.tscn runnable.
- Update docs/CHANGELOG.md if code or scene files change.

Output:

- problems found;
- files that need changes;
- exact manual test plan;
- whether the project is ready for v0.1.0.
```
