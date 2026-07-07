# Prompt 04 - Convert Template To Game

Use this prompt after creating a new project from the template.

## Task

Convert the generic template into a specific game project without breaking the runnable demo.

## Input required

Provide:

- game title;
- genre;
- short pitch;
- selected blueprint;
- first playable slice scope.

## Instructions

1. Read `AGENTS.md`.
2. Read `docs/TEMPLATE_USAGE.md` if it exists.
3. Read the selected blueprint in `docs/game_blueprints/`.
4. Create or update `docs/SCENARIO.md`.
5. Update `docs/CONTEXT.md` with the new game identity.
6. Update `docs/TASKS.md` with the first playable slice tasks.
7. Do not delete the demo scene until the replacement scene runs.

## Rules

- Do not create a full game in one iteration.
- Do not add external assets.
- Do not rename core folders unless necessary.
- Keep `game/scenes/Main.tscn` runnable.

## Final report

Return:

- files changed;
- new project identity;
- first playable slice plan;
- manual test steps;
- risks.
