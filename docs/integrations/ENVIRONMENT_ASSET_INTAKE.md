# Environment Asset Intake

This guide explains how to replace generated placeholder materials with real external assets.

## Current state

The classroom scene uses generated Godot `.tres` materials and modular in-repository geometry.

No external binary textures or models are bundled yet.

## Safe next imports

Recommended first imports:

1. Wall plaster PBR material.
2. Worn floor or linoleum PBR material.
3. Painted wood material for the door.
4. Blackboard material.
5. One simple classroom prop model.

## Recommended sources

| Source | Best for | Notes |
|---|---|---|
| Poly Haven | PBR textures, HDRI, models | CC0 assets. Good first choice for textures. |
| Kenney | Low-poly props | CC0 game assets. Good first choice for simple models. |
| ambientCG | PBR materials | Good for wall and floor materials. Verify each page. |
| Quaternius | Low-poly props | Verify each pack before import. |

## Import rules

- Prefer 1K or 2K textures for the template.
- Do not commit a full asset pack if only one asset is used.
- Keep original source URL in `docs/THIRD_PARTY_ASSETS.md`.
- Record author, license, usage and attribution needs.
- Keep gameplay logic independent from final art.

## Suggested folder layout

```text
assets/third_party/textures/walls/
assets/third_party/textures/floors/
assets/third_party/textures/doors/
assets/third_party/models/classroom/
assets/third_party/audio/
```

## Replacement map

| Generated material | Replace with |
|---|---|
| `old_plaster_wall.tres` | wall plaster PBR material |
| `green_wall_panel.tres` | painted lower wall material |
| `worn_linoleum_floor.tres` | worn floor or linoleum material |
| `painted_wood_door.tres` | painted wood material |
| `chalk_blackboard.tres` | chalkboard material |
| `school_wood.tres` | old desk/chair wood material |
