extends Node

signal line_started(speaker: String, text: String, index: int)
signal dialogue_finished

@export var auto_start: bool = false
@export var use_speech: bool = false
@export var speech_narrator_path: NodePath

var lines: Array[Dictionary] = []
var current_index: int = -1
var speech_narrator: Node = null

func _ready() -> void:
    if speech_narrator_path != NodePath(""):
        speech_narrator = get_node_or_null(speech_narrator_path)

    if lines.is_empty():
        lines = [
            {"speaker": "Narrator", "text": "Ты стоишь перед дверью."},
            {"speaker": "Memory", "text": "Сначала найди то, что оставили на столе."},
            {"speaker": "Narrator", "text": "Это пример простого dialogue runner."}
        ]

    if auto_start:
        start()

func set_lines(new_lines: Array[Dictionary]) -> void:
    lines = new_lines
    current_index = -1

func start() -> void:
    current_index = -1
    next_line()

func next_line() -> void:
    current_index += 1

    if current_index >= lines.size():
        dialogue_finished.emit()
        return

    var line := lines[current_index]
    var speaker := str(line.get("speaker", ""))
    var text := str(line.get("text", ""))

    if use_speech and speech_narrator != null and speech_narrator.has_method("speak"):
        speech_narrator.speak(text)

    line_started.emit(speaker, text, current_index)
