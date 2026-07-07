# Maintainer Notes

Notes for maintaining this repository as a public template.

## Merge strategy

Prefer small pull requests:

- one documentation topic;
- one gameplay system;
- one example scene;
- one refactor.

## Release strategy

Use semantic versioning loosely:

- patch version for small fixes;
- minor version for new template features;
- major version only for breaking structure changes.

## Review focus

Before merging, check:

- Godot scene paths;
- autoload paths;
- documentation consistency;
- asset licenses;
- whether the demo still runs.

## Template discipline

This repository should stay useful as a starting point.

Avoid:

- large story-specific content;
- large binary assets;
- complex systems before examples are stable;
- adding dependencies without documentation;
- changing folder structure without a migration note.
