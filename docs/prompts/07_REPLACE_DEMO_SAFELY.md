# Prompt 07 - Replace Demo Safely

## Task

Replace the generic demo level with the project's first custom playable slice.

## Safety rules

- Do not delete the old demo until the new scene runs.
- Keep a backup reference in documentation.
- Keep `project.godot` main scene valid.
- Update scene paths carefully.
- Do not remove autoloads unless they are unused and documented.

## Steps

1. Create the new level scene.
2. Add the player spawn.
3. Add the minimum objective chain.
4. Run the scene manually.
5. Update `game/scenes/Main.tscn` only after the new scene works.
6. Update docs.

## Documentation

Update:

- `docs/CHANGELOG.md`
- `docs/DECISIONS.md`
- `docs/TASKS.md`

## Done

The project starts from the new scene and the old demo is either preserved as an example or removed with a clear changelog entry.
