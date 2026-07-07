# Quality Checklist

Use this checklist before merging changes into the template.

## Godot project

- [ ] `project.godot` exists.
- [ ] Main scene path is valid.
- [ ] Autoload script paths are valid.
- [ ] No required scene was renamed without updating references.
- [ ] No generated `.godot/` files are committed intentionally.

## Scripts

- [ ] Scripts are readable.
- [ ] Scripts have clear names.
- [ ] No unrelated systems were changed.
- [ ] No large rewrite was done without a reason.
- [ ] Signals and node paths are still valid.

## Scenes

- [ ] Demo scene still runs.
- [ ] Player spawn is valid.
- [ ] Camera works.
- [ ] Collision is acceptable for the demo.
- [ ] Interaction objects are reachable.

## Documentation

- [ ] README still matches the project.
- [ ] Changelog is updated when needed.
- [ ] Decisions are recorded when architecture changes.
- [ ] Credits are updated when third-party content is added.
- [ ] New workflows are documented.

## Assets

- [ ] No unlicensed assets were added.
- [ ] No ripped assets were added.
- [ ] Large assets are justified.
- [ ] Placeholder assets are marked.

## Manual test

- [ ] Start the project.
- [ ] Move the player.
- [ ] Toggle flashlight.
- [ ] Interact with one object.
- [ ] Complete the demo objective.
- [ ] Exit the game safely.
