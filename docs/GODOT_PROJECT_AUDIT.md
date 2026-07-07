# Godot Project Audit

Use this audit when the project stops opening or after a large change.

## 1. Main project file

Check:

```text
project.godot
```

Important sections:

- `[application]`
- `[autoload]`
- `[display]`
- `[rendering]`

## 2. Main scene

Confirm that the main scene exists:

```text
game/scenes/Main.tscn
```

If the path changed, update `project.godot`.

## 3. Autoloads

Confirm that each autoload script exists.

Typical autoloads:

```text
game/scripts/core/GameState.gd
game/scripts/core/ObjectiveManager.gd
game/scripts/core/HorrorEventManager.gd
```

## 4. Broken references

Search for old paths after moving files.

Common broken references:

- moved scripts;
- renamed scenes;
- deleted objects;
- renamed node paths;
- missing resources.

## 5. Recovery flow

1. Revert the last unrelated change.
2. Restore missing file paths.
3. Open the smallest scene first.
4. Then open the main scene.
5. Update documentation after the fix.

## 6. Agent instruction

When fixing a broken project, make the smallest possible repair. Do not refactor unrelated systems during recovery.
