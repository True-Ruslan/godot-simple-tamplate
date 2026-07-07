# Local Validation Guide

Use this guide when checking the template on a local machine.

## 1. Clone

```bash
git clone https://github.com/True-Ruslan/godot-simple-tamplate.git
cd godot-simple-tamplate
```

If the repository was renamed, use the new URL.

## 2. Open in Godot

Open the folder that contains:

```text
project.godot
```

## 3. Run main scene

Run:

```text
game/scenes/Main.tscn
```

## 4. Check errors

Look for:

- missing script errors;
- missing scene references;
- broken autoloads;
- missing resources;
- node path errors.

## 5. Manual test

Use:

```text
docs/PLAYTEST_CHECKLIST.md
```

## 6. Report results

Create or fill:

```text
docs/VALIDATION_REPORT.md
```

Minimum report:

```md
## Godot version

## Operating system

## What works

## What is broken

## Screenshots or logs
```
