# Release Notes v0.1.0

Status: draft.

## Summary

First stable template snapshot for short first-person atmospheric horror prototypes in Godot.

## Included

- Godot project skeleton.
- First-person player controller.
- Mouse look.
- Movement: walk, sprint and crouch.
- Flashlight with battery display.
- Interaction raycast.
- Interactive note example.
- Interactive light switch example.
- Event-gated door example.
- Objective manager.
- Horror event manager.
- HUD with prompts, objective text, battery text and message panel.
- Minimal playable demo flow.
- Documentation for human users.
- Documentation for AI agents.
- Asset and license guidance.
- Game blueprints.
- Playable slice examples.
- Quality and playtest checklists.

## Demo flow

The demo level demonstrates a small horror loop:

1. Player spawns in a classroom.
2. Player checks the exit door.
3. Door points the player back into the room.
4. Player reads the note.
5. Blackboard message appears.
6. Player returns to the door.
7. Door opens and shows a completion message.

## Before tagging

Complete `docs/RELEASE_CHECKLIST.md`.

Required checks:

- project opens in Godot;
- `game/scenes/Main.tscn` runs;
- player movement works;
- mouse look works;
- interaction works;
- flashlight works;
- demo flow can be completed;
- documentation links are valid;
- no temporary files are committed.

## Known limitations

- No CI validation yet.
- No official export presets yet.
- No advanced settings menu yet.
- No localization example yet.
- No save system example yet.
- No final art assets are bundled.
- No audio assets are bundled.

## Suggested next release

`v0.2.0` should focus on optional atmosphere examples: light flicker, audio event, simple VHS/film effect and export presets.
