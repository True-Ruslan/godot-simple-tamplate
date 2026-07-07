# Dialogue Guide

## Included scripts

- `game/scripts/dialogue/DialogueRunner.gd`
- `game/scripts/dialogue/DialoguePanel.gd`

## Showcase scene

```text
game/scenes/examples/DialogueShowcase.tscn
```

## Purpose

This example shows a small text flow system for notes, monologues and simple conversations.

## Pattern

Dialogue data is represented as an array of dictionaries:

```gdscript
[
    {"speaker": "Narrator", "text": "Example line."},
    {"speaker": "Memory", "text": "Second line."}
]
```

## When to replace it

Keep this runner for small prototypes. Replace it with a dedicated dialogue addon only when you need branching graphs, variables, portraits, timelines or localization tooling.
