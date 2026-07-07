# Demo Improvement Plan

This plan describes the next gameplay-focused improvements for the template demo.

## Goal

Make the demo scene a tiny but complete horror slice.

## Target demo flow

1. Player spawns in a small room.
2. Player sees an objective.
3. Player reads a note.
4. Player toggles or uses one object.
5. A small horror event happens.
6. Objective updates.
7. Player reaches an exit or completion marker.

## Required demo systems

- player movement;
- flashlight;
- interaction prompt;
- readable note;
- objective update;
- one light or sound event;
- completion message.

## Avoid

- enemy AI;
- chase sequence;
- inventory UI;
- large map;
- external assets.

## Suggested PR

```text
feat: add complete micro horror demo flow
```

## Definition of done

- A new user can run the scene and understand what to do.
- The demo takes 1-3 minutes.
- All interactions are obvious.
- The event is atmospheric but not disruptive.
- The demo proves how to extend the template.
