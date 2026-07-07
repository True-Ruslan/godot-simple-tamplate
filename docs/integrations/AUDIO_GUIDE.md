# Audio Guide

## Included scripts

- `game/scripts/audio/AudioManager.gd`
- `game/scripts/audio/AudioEventTrigger.gd`

## Showcase scene

```text
game/scenes/examples/AudioShowcase.tscn
```

## Pattern

Use event ids instead of hardcoded sounds in gameplay scripts.

Example ids:

```text
ui_click
light_buzz
low_hit
chalk_scratch
door_knock
```

## Placeholder audio

The current manager generates simple placeholder tones. This keeps the base template free from binary assets.

## Replacing placeholders

Later you can replace generated tones with real `.ogg` or `.wav` files.

When adding real audio:

1. Check license.
2. Put files under `assets/third_party/audio/`.
3. Add the source to `docs/THIRD_PARTY_ASSETS.md`.
4. Keep event ids stable.
