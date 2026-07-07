# Godot Opening Expectations

When opening the project in Godot for the first time, expect Godot to generate local metadata.

## Expected local files

Godot may create or update files inside:

```text
.godot/
```

These files usually should not be committed.

## What to check

- Project appears in the Godot project manager.
- Main scene can be opened.
- Scripts are attached correctly.
- Output panel has no fatal errors.

## If errors appear

Record them in `docs/VALIDATION_REPORT_TEMPLATE.md` and fix them in a small PR.
