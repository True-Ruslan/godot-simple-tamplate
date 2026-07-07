# Addons Guide

Use this guide when adding Godot addons to projects created from this template.

## Where to look

Start with the Godot Asset Library inside the editor. Then check GitHub or the author's official page.

## Basic install flow

1. Download the addon.
2. Read its license.
3. Copy the addon folder into `addons/`.
4. Open Godot.
5. Go to `Project > Project Settings > Plugins`.
6. Enable the plugin only if the project still opens cleanly.
7. Record the addon in `docs/CREDITS.md`.

## Template rules

- Do not commit large demo folders from addons unless they are needed.
- Do not add addons with unclear licenses.
- Prefer MIT, BSD, Apache-2.0 and CC0.
- Keep addons optional when possible.
- After adding an addon, run the demo scene.

## Suggested addons for atmospheric horror

| Need | Example type |
|---|---|
| First-person movement | FPS controller addon |
| Interaction | raycast interaction system |
| Visual style | CRT, VHS, PSX or film grain shader |
| Level design | grid map or prototyping tools |
| Audio | ambience manager or audio bus helper |
