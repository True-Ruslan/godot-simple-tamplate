# Template Usage

This guide explains how to turn this repository into a new Godot horror project.

## 1. Create a new repository from the template

Use GitHub template mode or clone the repository manually.

Recommended project names:

- `my-school-horror`
- `night-shift-horror`
- `roadside-horror-prototype`
- `apartment-horror-demo`

## 2. Open the project in Godot

Open the folder that contains `project.godot`.

Run:

```text
game/scenes/Main.tscn
```

Confirm that the demo level starts before changing anything.

## 3. Rename the project

In Godot:

```text
Project -> Project Settings -> Application -> Config -> Name
```

Also update:

- `README.md`
- `docs/CONTEXT.md`
- `docs/DECISIONS.md`
- export presets when they are added

## 4. Choose a blueprint

Start from one blueprint in:

```text
docs/game_blueprints/
```

Recommended first choices:

- `school_horror.md`
- `apartment_horror.md`
- `roadside_horror.md`
- `forest_lookout_horror.md`

## 5. Write your scenario

Copy:

```text
docs/SCENARIO_TEMPLATE.md
```

Create:

```text
docs/SCENARIO.md
```

Keep the first version small. One location and one clear objective are enough.

## 6. Plan the first playable slice

A good first slice contains:

- one room;
- one objective;
- one interaction;
- one note;
- one sound or light event;
- one exit condition.

## 7. Work iteratively

Do not ask an AI agent to create the whole game at once.

Use this order:

1. room blockout;
2. player movement check;
3. interaction object;
4. objective update;
5. horror event;
6. lighting pass;
7. audio pass;
8. short playtest.

## 8. Before adding assets

Read:

- `docs/ASSET_SOURCES.md`
- `docs/ADDONS_GUIDE.md`
- `docs/LICENSE_CHECKLIST.md`
- `docs/CREDITS.md`

If the asset license is unclear, do not add it.
