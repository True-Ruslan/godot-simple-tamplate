extends Label3D

@export var trigger_event_id: String = "note_read_first_time"
@export_multiline var reveal_text: String = "Ты снова не готов"
@export var hide_until_triggered: bool = true

func _ready() -> void:
    if hide_until_triggered:
        visible = false
    HorrorEventManager.horror_event_started.connect(_on_horror_event_started)

func _on_horror_event_started(event_id: String) -> void:
    if event_id != trigger_event_id:
        return

    text = reveal_text
    visible = true
