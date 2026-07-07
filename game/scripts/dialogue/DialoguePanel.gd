extends CanvasLayer

@export var dialogue_runner_path: NodePath

@onready var panel: Panel = $Root/Panel
@onready var speaker_label: Label = $Root/Panel/MarginContainer/VBoxContainer/SpeakerLabel
@onready var body_label: RichTextLabel = $Root/Panel/MarginContainer/VBoxContainer/BodyLabel
@onready var next_button: Button = $Root/Panel/MarginContainer/VBoxContainer/NextButton

var dialogue_runner: Node = null

func _ready() -> void:
    process_mode = Node.PROCESS_MODE_ALWAYS
    panel.visible = false
    next_button.pressed.connect(_on_next_pressed)

    if dialogue_runner_path != NodePath(""):
        dialogue_runner = get_node_or_null(dialogue_runner_path)

    if dialogue_runner != null:
        dialogue_runner.line_started.connect(_on_line_started)
        dialogue_runner.dialogue_finished.connect(_on_dialogue_finished)

func _on_line_started(speaker: String, text: String, _index: int) -> void:
    speaker_label.text = speaker
    body_label.text = text
    panel.visible = true

func _on_dialogue_finished() -> void:
    panel.visible = false

func _on_next_pressed() -> void:
    if dialogue_runner != null and dialogue_runner.has_method("next_line"):
        dialogue_runner.next_line()
